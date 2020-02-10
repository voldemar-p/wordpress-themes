import $ from 'jquery';

class MyNotes {

    // KIRJELDUS
    constructor() {
        this.events();
    }

    // SYNDMUS
    events() {
        $("#my-notes").on("click", ".delete-note", this.delete_note.bind(this));
        // Kui parent elemendis #my-notes on alamelement .delete-note, siis k2ivita delete_note meetod
        $("#my-notes").on("click", ".edit-note", this.edit_note.bind(this));
        $("#my-notes").on("click", ".update-note", this.update_note.bind(this));
        $(".submit-note").on("click", this.create_note.bind(this));
    }

    // MEETOD
    edit_note(e) {
        var this_note = $(e.target).parents("li");
        if(this_note.data("state") == "editable") {
            this.make_note_read_only(this_note);
        } else {
            this.make_note_editable(this_note);
        }
    }

    make_note_editable(this_note) {
        this_note.find(".edit-note").html('<i class="fa fa-times" aria-hidden="true"></i>Cancel');
        // edit nupule vajutades muutub selle kiri canceliks.
        this_note.find(".note-title-field, .note-body-field").removeAttr("readonly").addClass("note-active-field");
        this_note.find(".update-note").addClass("update-note--visible");
        // .update-note klassiga nupp (save) on n2htav peale edit nupule vajutamist.
        this_note.data("state", "editable");
    }

    make_note_read_only(this_note) {
        this_note.find(".edit-note").html('<i class="fa fa-pencil" aria-hidden="true"></i>Edit');
        this_note.find(".note-title-field, .note-body-field").attr("readonly", "readonly").removeClass("note-active-field");
        this_note.find(".update-note").removeClass("update-note--visible");
        this_note.data("state", "cancel");
    }

    delete_note(e) {
        var this_note = $(e.target).parents("li");
        // e.target - Delete nupp, millele vajutati; parents - otsib selle nupu vanem-elementi.
        $.ajax({
        // ajax - Create, Update, Delete requestide tarbeks.
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-WP-Nonce', university_data.nonce);
            }, // Otsib nonce-i
            url: university_data.root_url + '/wp-json/wp/v2/note/' + this_note.data('id'),
            // .data() otsib htmlist data id v22rtuse
            type: 'DELETE',
            success: (response) => {
                this_note.slideUp();
                // Lykkab kustutatud elemendi sujuvalt ekraanilt v2lja.
                console.log("Congrats");
                console.log(response);
                if(response.user_note_count < 5) {
                    $(".note-limit-message").removeClass("active");
                }
            },
            error: (response) => {
                console.log("Sorry");
                console.log(response);
            }
        });
    }

    update_note(e) {
        var this_note = $(e.target).parents("li");
        var our_updated_post = {
            'title': this_note.find(".note-title-field").val(),
            // Otsi pealkirjast .note-title-fieldi kasutaja poolt sisestatud v22rtus
            'content': this_note.find(".note-body-field").val(),
        }
        $.ajax({
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-WP-Nonce', university_data.nonce);
            },
            url: university_data.root_url + '/wp-json/wp/v2/note/' + this_note.data('id'),
            type: 'POST',
            data: our_updated_post,
            // POST request muudab artikli lehe teksti ymber var our_updated_post (veebilehel editi kaudu k2sitsi uuendatud) tekstiks
            success: (response) => {
                this.make_note_read_only(this_note);
                console.log("Congrats");
                console.log(response);
            },
            error: (response) => {
                console.log("Sorry");
                console.log(response);
            }
        });
    }

    create_note() {
        var our_new_post = {
            'title': $(".new-note-title").val(),
            'content': $(".new-note-body").val(),
            'status': 'publish',
        }
        $.ajax({
            beforeSend: (xhr) => {
                xhr.setRequestHeader('X-WP-Nonce', university_data.nonce);
            },
            url: university_data.root_url + '/wp-json/wp/v2/note/',
            type: 'POST',
            data: our_new_post,
            success: (response) => {
                $(".new-note-title, .new-note-body").val('');
                // J2tab peale uue m2rkme loomist "create note" sisestusalad tyhjaks.
                $(`
                    <li data-id="${response.id}">
                        <input readonly class="note-title-field" value="${response.title.raw}">
                        <span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</span>
                        <span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"></i>Delete</span>
                        <textarea readonly class="note-body-field">${response.content.raw}</textarea>
                        <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"></i>Save</span>
                    </li>
                `).prependTo("#my-notes").hide().slideDown();
                // .prependTo- millisele elemendile loodud info lisame
                // .hide ja .slideDown - et uus m2rge ilmuks sujuvalt
                console.log("Congrats");
                console.log(response);
            },
            error: (response) => {
                if(response.responseText == "You have reached your note limit.") {
                // Kui php.functionsis m22ratud postituste limiit saab t2is,
                    $(".note-limit-message").addClass("active");
                    // tee htmli klass .note-limit-message aktiivseks (v2ljastab kasutajale vea teksti).
                }
                console.log("Sorry");
                console.log(response);
            }
        });
    }
}

export default MyNotes;