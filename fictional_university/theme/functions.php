<?php

    require get_theme_file_path('/inc/search-route.php');
    // T6mbab/lisab search-route.php funktsioonidesse.
    require get_theme_file_path('/inc/like-route.php');

    function university_custom_rest() {
        register_rest_field('post', 'author_name', array(
        // Registreerib RESTi uue v22rtuse.
            'get_callback' => function() {return get_the_author();}
        ));

        register_rest_field('note', 'user_note_count', array(
            'get_callback' => function() {return count_user_posts(get_current_user_id(), 'note');}
            // Lisame RESTi uue muutuja, mis loeb kasutajate postituste hulka.
        ));
    }

    add_action('rest_api_init', 'university_custom_rest');
    // Lisa midagi RESTi

    function page_banner($args = NULL) {
    // $args otsib funktsiooni sulgudest argumente (juhul, kui need on v2ljakutsudes m22ratud).
        
        if(!$args['title']) {
            $args['title'] = get_the_title();
            // Kui argumentide arrays pole pealkirja m22ratud, siis v2ljasta see WP administ.
        }

        if(!$args['subtitle']) {
            $args['subtitle'] = get_field('page_banner_subtitle');
            // Kui argumentide arrays pole alampealkirja m22ratud, siis v2ljasta see WP administ.
        }

        if(!$args['photo']) {
            if($args['photo'] = get_field('page_banner_background_image')) {
            // Kui argumentide arrays pole taustapilti m22ratud, siis v2ljasta see WP administ,
                $args['photo'] = get_field('page_banner_background_image') ['sizes'] ['page_banner'];
                // kui WP adminis on taustapilt, m22ra sellele vastav suurus.
            } else {
                $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
                // Kui pole taustapilti argumentide arrays ega WP adminis m22ratud, v6ta see pilt.
            }
        }

        ?>

        <div class="page-banner">
            <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo'] ?>);"></div>
            <div class="page-banner__content container container--narrow">
                <h1 class="page-banner__title"><?php echo $args['title'] ?></h1>
                <!-- v6tab argumendina arrayst pealkirja -->
                <div class="page-banner__intro">
                    <p><?php echo $args['subtitle'] ?></p>
                </div>
            </div>  
        </div>

    <?php }

    function university_files() {
        wp_enqueue_script('js-files', get_theme_file_uri('/js/scripts-bundled.js'), NULL, microtime(), true);
        // Null- kas antud js fail s6ltub m6nest teisest js failist; true- kas laadida fail vahetult ennem </body>
        wp_enqueue_style('google-fonts','//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
        wp_enqueue_style('font-awesome','//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
        wp_enqueue_style('university_main_files', get_stylesheet_uri(), NULL, microtime());
        // laeb css failid (creating a function)
        wp_localize_script('js-files', 'university_data', array(
            'root_url' => get_site_url(),
            'nonce' => wp_create_nonce('wp_rest'),
            // Genereeritakse suvaline number
        ));
        // Laseb veebilehe root html-ile lisada javascripti.
    }

    add_action('wp_enqueue_scripts', 'university_files');
    /* wp_enqueue_scripts- hook, mis laeb css/js faile;
        university_files- funktsiooni nimi, mis css/js faile laadima hakkab (calling a function) */

    function university_features() {
        add_theme_support('title-tag');
        // Lisab igale lehele yles lehe aknasse tema pealkirja nime
        add_theme_support('post-thumbnails');
        // Vaikimisi kehtib vaid vaike artiklitele.
        add_image_size('professor_landscape', 400, 260, true);
        // Sellega saame m22rata, millises suuruses wordpress pilte vaikimisi pakub.
        add_image_size('professor_portrait', 480, 650, true);
        // 1- nimi, mille ise m22rame antud pildi suurusele, 2- pildi laius, 3- pildi k6rgus, 4- kas cropime.
        add_image_size('page_banner', 1500, 350, true);

        /*  register_nav_menu('footer_menu_location_one', 'Footer Menu Location One'); // Lisab antud nimedega menyy valikud wp adminni
        register_nav_menu('header_menu_location', 'Header Menu Location'); /* Registreerib menyy wordpressi admini alasse
        (selle kaudu saab wp adminnis menyysid lisada ja muuta). */   
    }

    add_action('after_setup_theme', 'university_features');

    function university_adjust_queries($query) {
    // L2hme artiklit laadides query sisse,

        if(!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()) {
            // Kui ei ole tegemist admini alaga (tahame muudatusi vaid front-endis, mitte adminis), tahame muuta vaid eventi artikleid ja vaid vaike querysid (mitte customeid).
            $today = date('Ymd');
            $query->set('meta_key', 'event_date');
            // Query sees muudame v22rtusi nagu tegime $homepage_events korral.
            $query->set('orderby', 'meta_value_num');
            $query->set('order', 'ASC');
            $query->set('meta_query', array(
                array(
                  'key' => 'event_date',
                  'compare' => '>=',
                  'value' => $today,
                  'type' => 'numeric',
                )
            ));

        } else if(!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()) {
            $query->set('orderby', 'title');
            $query->set('order', 'ASC');
            $query->set('posts_per_page', -1);

        } else if(!is_admin() AND is_post_type_archive('campus') AND $query->is_main_query()) {
            $query->set('posts_per_page', -1);
        }
        
    }

    add_action('pre_get_posts', 'university_adjust_queries');
    // L2heb k2iku ennem artiklite queryde laadimist.

// SUBSCRIBER KASUTAJA LOGIN
    add_action('admin_init', 'redirect_subs_to_frontend');
    // Kui admini alasse sisse logitakse.

    function redirect_subs_to_frontend() {
        $our_current_user = wp_get_current_user();
        if(count($our_current_user->roles) == 1 AND $our_current_user->roles[0] == 'subscriber') {
        // Kui kasutaja rolle on 1 ja rolliks on 'subscriber',
            wp_redirect(site_url('/'));
            // siis sisselogimisel suuna kasutaja kodulehele, mitte admini alale.
            exit;
        }
    }

    add_action('wp_loaded', 'no_subs_admin_bar');
    // Kui wordpressi leht on laetud.

    function no_subs_admin_bar() {
        $our_current_user = wp_get_current_user();
        if(count($our_current_user->roles) == 1 AND $our_current_user->roles[0] == 'subscriber') {
            show_admin_bar(false);
            // 2ra n2ita admini t66riba.
        }
    }

// LOGIN ALA
    add_filter('login_headerurl', 'our_header_url');

    function our_header_url() {
        return esc_url(site_url('/'));
        // Login alal logole vajutades viiakse meid kodulehele.
    }

    add_action('login_enqueue_scripts', 'our_login_css');

    function our_login_css() {
        wp_enqueue_style('university_main_files', get_stylesheet_uri(), NULL, microtime());
        // Laeb meie teema css-i ka wp admini sisselogimis alal.
        wp_enqueue_style('google-fonts','//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    }

    add_filter('login_headertitle', 'our_login_title');

    function our_login_title() {
        return get_bloginfo('name');
        // Login alas hiirega pealkirja peale liikudes n2itab meie veebilehe nime.
    }

// SUNNI NOTE POSTITUSED PRIVAATSEKS NING PIIRA POSTITUSTE HULKA
    add_filter('wp_insert_post_data', 'make_note_private', 10, 2);
    // Teeb postitust sisestades midagi selle andmetega
    // 10- mitmendana antud funktsioon k2ivitatakse
    // 2- mitu parameetrit on v6imalik funktsioonile anda

    function make_note_private($data, $postarr) {
        if($data['post_type'] == 'note') {
            if(count_user_posts(get_current_user_id(), 'note') > 4 AND !$postarr['ID']) {
            // Kui kasutaja on loonud yle nelja postituse,
                die("You have reached your note limit.");
                // 2ra lase tal rohkem postitusi luua.
            }
            $data['post_content'] = sanitize_textarea_field($data['post_content']);
            $data['post_title'] = sanitize_text_field($data['post_title']);
            // sanitize eemaldab kasutaja poolt sisestatud html-i ja muu koodi.
        }

        if($data['post_type'] == 'note' AND $data['post_status'] != 'trash') {
        // Kui artikli tyyp on note ja ta ei ole kustutatud,
            $data['post_status'] = "private";
            // muuda ta privaatseks.
        }
        return $data;
    }
