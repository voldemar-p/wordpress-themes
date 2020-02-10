import $ from 'jquery';
// Impordin jquery

class Search {

// 1. KIRJELDUS/OBJEKTI ALGATAMINE- M22RAN OLEMASOLEVA ELEMENDI
    constructor() {
        this.add_search_html();
        this.results_div = $("#search-overlay__results");
        this.open_button = $(".js-search-trigger");
        // $ -> v6tame midagi jqueryst; .js-search-trigger -> jquery x-elemendi klassi nimi.
        this.close_button = $(".search-overlay__close");
        this.search_overlay = $(".search-overlay");
        this.search_field = $("#search-term");
        this.is_overlay_open = false;
        this.is_spinner_visible = false;
        this.previous_value;
        this.typing_timer;
        this.events();
        // Otsib ja k2ivitab syndmused.
    }

// 2. SYNDMUS- MIDAGI JUHTUB
    events() {
        this.open_button.on("click", this.open_overlay.bind(this));
        // click -> syndmus, mida otsime; open_overlay -> millise meetodi v2lja kutsume sellele syndmusele.
        // click- kui kursoriga kuhugi klikitakse.

        this.close_button.on("click", this.close_overlay.bind(this));
        // .bind(this) -> peale '.on' meetodit on vaja edaspidi uuesti '.this'-i refereedia.

        $(document).on("keydown", this.key_press_dispatcher.bind(this));
        // keydown- kui klaviatuuril midagi vajutatakse (k2ivitub kohe allavajutusel).

        this.search_field.on("keyup", this.typing_logic.bind(this));
    }

// 3. MEETODID (FUNKTSIOONID, TEGEVUSED)- MIDAGI K2IVITUB
    typing_logic() {
        if (this.search_field.val() != this.previous_value) {
            clearTimeout(this.typing_timer);
            if (this.search_field.val()) {
                if (!this.is_spinner_visible) {
                    this.results_div.html('<div class="spinner-loader"></div>');
                    this.is_spinner_visible = true;
                }
                this.typing_timer = setTimeout(this.get_results.bind(this),750);
            } else {
                this.results_div.html('');
                this.is_spinner_visible = false;
                // Kui search bar on tyhi, siis 2ra spinnerit kuva.
            }
        }
        this.previous_value = this.search_field.val();
    }

    get_results() {
        $.getJSON(university_data.root_url + '/wp-json/university/v1/search?term=' + this.search_field.val(), (results) => {
        // V6tab JSON-i kaudu search bari sisestatava v22rtuse (serveriga suhtlemine, powered by REST API).
        // functions.php funktsioon root urli saamiseks + REST API link + kasutaja kirjutatud otsing.
        // (results) -> funktsiooni, mis hoiab endas serverist kysitud infot, nimi.
            this.results_div.html(`
                <div class="row">
                    <div class="one-third">
                        <h2 class="search-overlay__section-title">General Information</h2>
                        ${results.generalInfo.length ? '<ul class="link-list min-list">' : '<p>No general information matches that search.</p>'}
                            ${results.generalInfo.map(item => `<li><a href="${item.permalink}">${item.title}</a> ${item.post_type == 'post' ? `by ${item.author_name}` : ''}</li>`).join('')}
                        ${results.generalInfo.length ? '</ul>' : ''}
                    </div>
                    <div class="one-third">
                        <h2 class="search-overlay__section-title">Programs</h2>
                        ${results.programs.length ? '<ul class="link-list min-list">' : `<p>No programs match that search. <a href="${university_data.root_url}/programs">View all programs</a></p>`}
                            ${results.programs.map(item => `<li><a href="${item.permalink}">${item.title}</a></li>`).join('')}
                        ${results.programs.length ? '</ul>' : ''}
                        <h2 class="search-overlay__section-title">Professors</h2>
                        ${results.professors.length ? '<ul class="professor-cards">' : `<p>No professors match that search.</p>`}
                            ${results.professors.map(item => `
                            <li class="professor-card__list-item">
                            <a class="professor-card" href="${item.permalink}">
                                <img class="professor-card__image" src="${item.image}">
                                <span class="professor-card__name">${item.title}</span>
                            </a>
                        </li>
                            `).join('')}
                        ${results.professors.length ? '</ul>' : ''}
                    </div>
                    <div class="one-third">
                        <h2 class="search-overlay__section-title">Campuses</h2>
                        ${results.campuses.length ? '<ul class="link-list min-list">' : `<p>No campuses match that search. <a href="${university_data.root_url}/campuses">View all campuses</a></p>`}
                            ${results.campuses.map(item => `<li><a href="${item.permalink}">${item.title}</a></li>`).join('')}
                        ${results.campuses.length ? '</ul>' : ''}
                        <h2 class="search-overlay__section-title">Events</h2>
                        ${results.events.length ? '' : `<p>No events match that search. <a href="${university_data.root_url}/events">View all events</a></p>`}
                            ${results.events.map(item => `
                                <div class="event-summary">
                                    <a class="event-summary__date t-center" href="${item.permalink}">
                                        <span class="event-summary__month">${item.month}</span>
                                        <span class="event-summary__day">${item.day}</span>
                                    </a>
                                    <div class="event-summary__content">
                                        <h5 class="event-summary__title headline headline--tiny"><a href="${item.permalink}">${item.title}</a></h5>
                                        <p>${item.description}<a href="${item.permalink}" class="nu gray">Learn more</a></p>
                                    </div>
                                </div>
                            `).join('')}
                    </div>
                </div>
            `);
            this.is_spinner_visible = false;
        });
    }

    key_press_dispatcher(e) {
    // 'e' - suvaline v22rtus, mille kaudu saame meetodile lisafunktsioone anda.
        if (e.keyCode == 83 && !this.is_overlay_open && !$("input, textarea").is(':focus')) {
        // is_overlay_open - kas search overlay on lahti (k2ivitab open_overlay() meetodi).
            this.open_overlay();
            // Kui klaviatuuril vajutatakse 's', siis k2ivita vastav meetod.
        }
        if (e.keyCode == 27 && this.is_overlay_open) {
            this.close_overlay();
        }
    }

    open_overlay() {
        this.search_overlay.addClass("search-overlay--active");
        // search-overlay--active -> lisame .css klassi, mille praegu k2ivitame (search overlay aken).
        $("body").addClass("body-no-scroll");
        // Kui search overlay avaneb, siis keelame bodyl scrollimise.
        this.search_field.val('');
        // Teeb search fieldi tyhjaks peale selle sulgemist.
        setTimeout(() => this.search_field.focus(), 301);
        // () => this.search_field.focus() |on sama, mis| function() {this.search_field.focus();}
        this.is_overlay_open = true;
        // M22ran, et overlay open = true ainult k2esolevas meetodis.
        return false;
    }

    close_overlay() {
        this.search_overlay.removeClass("search-overlay--active");
        // eemaldame .css-i klassi
        $("body").removeClass("body-no-scroll");
        // Kui search overlay sulgub, siis lubame taas bodyl scrollimise.
        this.is_overlay_open = false;
        // M22ran, et overlay on k2esolevas meetodis kinni.
    }

    add_search_html() {
    // Lisame search overlay html-i keha.
        $("body").append(`
        <div class="search-overlay">
        <div class="search-overlay__top">
          <div class="container">
            <i class="fa fa-search search-overlay__icon" aria-hidden="true"></i>
            <input type="text" class="search-term" placeholder="What are you looking for?" id="search-term">
            <i class="fa fa-window-close search-overlay__close" aria-hidden="true"></i>
          </div>
        </div>
        <div class="container">
          <div id="search-overlay__results">
          </div>
        </div>
      </div>
        `);
    }
}

export default Search;