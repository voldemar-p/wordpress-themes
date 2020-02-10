<?php

function university_post_types() {

    // EVENT POST TYPE

    register_post_type('event', array(  
    // Registreerib uue artikli klassi (systeemi siseselt).
        'capability_type' => 'event',
        'map_meta_cap' => true,
        // 2 ylemist rida annavad eventi artiklitele adminni alas rohkem kasutajav6imalusi.
        'supports' => array('title', 'editor', 'excerpt'),
        'rewrite' => array('slug' => 'events'), 
        // Muudab kodulehel arhiivi url slugi nime
        'has_archive' => true, 
        // Lisab meie custom artiklile arhiivi url-i (kodulehel .../events).
        'menu_icon' => 'dashicons-calendar', 
        // Annab wp adminni menyys ikoonile custom v2limuse.
        'public' => true, 
        // T2hendab, et artikli klass on wp admin areas n2htav.
        'labels' => array( 
            'name' => 'Events', 
            // Annab artiklile klassi nime (wp admin areas n2htav).
            'add_new_item' => 'Add New Event', 
            // Kuidas eventi lisamise nimetus on wp adminis.
            'edit_item' => 'Edit Event', 
            // Kuidas eventi muutmise nimetus on wp adminis
            'all_items' => 'All Events', 
            // K6ik postitused nimi wp-s.
            'singular_name' => 'Event'
        )
    ));

    // PROGRAM POST TYPE

    register_post_type('program', array( 
        'supports' => array('title'),
        'rewrite' => array('slug' => 'programs'),
        'has_archive' => true,
        'menu_icon' => 'dashicons-awards',
        'public' => true,
        'labels' => array( 
            'name' => 'Programs',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program'
        )
    ));

    // PROFESSOR POST TYPE

    register_post_type('professor', array( 
        'show_in_rest' => true,
        'supports' => array('title', 'editor', 'thumbnail'),
        'menu_icon' => 'dashicons-welcome-learn-more',
        'public' => true,
        'labels' => array( 
            'name' => 'Professors',
            'add_new_item' => 'Add New Professor',
            'edit_item' => 'Edit Professor',
            'all_items' => 'All Professors',
            'singular_name' => 'Professor'
        )
    ));

    // CAMPUS POST TYPE

    register_post_type('campus', array( 
        'capability_type' => 'campus',
        'map_meta_cap' => true,
        'supports' => array('title', 'editor'),
        'rewrite' => array('slug' => 'campuses'),
        'has_archive' => true,
        'menu_icon' => 'dashicons-location-alt',
        'public' => true,
        'labels' => array( 
            'name' => 'Campuses',
            'add_new_item' => 'Add New Campus',
            'edit_item' => 'Edit Campus',
            'all_items' => 'All Campuses',
            'singular_name' => 'Campus'
        )
    ));

    // NOTE POST TYPE

    register_post_type('note', array(
        'capability_type' => 'note',
        // Sellega kirjutame yle eelnevad piirangud, seatud yldiste posti reeglite j2rgi
        'map_meta_cap' => true,
        'show_in_rest' => true, 
        'supports' => array('title', 'editor'),
        'menu_icon' => 'dashicons-welcome-write-blog',
        'public' => false,
        'show_ui' => true,
        // 2ra n2ita neid postitusi avalikult kuid siiski kuva admini alas
        'labels' => array( 
            'name' => 'Notes',
            'add_new_item' => 'Add New Note',
            'edit_item' => 'Edit Note',
            'all_items' => 'All Notes',
            'singular_name' => 'Note'
        )
    ));

    // LIKE POST TYPE

    register_post_type('like', array(
        'supports' => array('title'),
        'menu_icon' => 'dashicons-heart',
        'public' => false,
        'show_ui' => true,
        'labels' => array( 
            'name' => 'Likes',
            'add_new_item' => 'Add New Like',
            'edit_item' => 'Edit Like',
            'all_items' => 'All Likes',
            'singular_name' => 'Like'
        )
    ));
}

add_action('init', 'university_post_types');

