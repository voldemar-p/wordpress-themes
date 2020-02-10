<?php

    add_action('rest_api_init', 'university_register_search');

    function university_register_search() {
    // Loome enda custom API.
        register_rest_route('university/v1', 'search', array(
        // Mis tuleb API url-is peale /wp-json/'it.
            'methods' => WP_REST_SERVER::READABLE,
            // Seostub CRUDiga- mida tahame, et klient APIga teha saaks (antud juhul lugeda ja alla laadida).
            'callback' => 'university_search_results'
            // V2ljastab funktsiooni v22rtuse.
        ));
    }

    function university_search_results($data) {
        $main_query = new WP_Query(array(
        // Loome artiklitele custom array.
            'post_type' => array('post', 'page', 'professor', 'program', 'campus', 'event'),
            's' => sanitize_text_field($data['term']),
            // s = search-> m22rame url-is otsingu nimetuse, mille kaudu p22seme ligi kasutaja poolt searchi (k2esolevasse arraysse) sisestatavale v22rtusele ($data).
            // sanitize_text_field- sanitiseerib/puhastab pahavaraga seostuvad sisestatud otsinguv22rtused.
        ));

        $results = array(
        // M22rame, milliseid artikleid tahame APIsse tagastada.
            'generalInfo' => array(),
            'professors' => array(),
            'programs' => array(),
            'campuses' => array(),
            'events' => array(),
        );

        while ($main_query->have_posts()) {
            $main_query->the_post();
            // M22rame, millised v22rtused iga artikli kohta tagastada tahame.

            if(get_post_type() == 'post' OR get_post_type() == 'page') {
                array_push($results['generalInfo'], array(
                // Lykka j2rgnevad v22rtused $results['generalInfo'] arraysse.
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'post_type' => get_post_type(),
                    'author_name' => get_the_author(),
                ));
            } else if (get_post_type() == 'professor') {
                array_push($results['professors'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'image' => get_the_post_thumbnail_url(0, 'professor_landscape'),
                    // 0 - m22rab, millisest artiklist pilt v6etakse (0 t2hendab, et k2esolevast).
                ));
            } else if (get_post_type() == 'program') {
                $related_campuses = get_field('related_campus');
                if($related_campuses) {
                    foreach($related_campuses as $campus) {
                        array_push($results['campuses'], array(
                            'title' => get_the_title($campus),
                            'permalink' => get_the_permalink($campus),
                        ));
                    }
                }
                array_push($results['programs'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'id' => get_the_id(),
                ));
            } else if (get_post_type() == 'campus') {
                array_push($results['campuses'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                ));
            } else if (get_post_type() == 'event') {
                $event_date = new DateTime(get_field('event_date', false, false));
                $description = NULL;
                if(has_excerpt()) {
                    $description = get_the_excerpt();
                } else {
                    $description =  wp_trim_words(get_the_content(), 18);
                }
                array_push($results['events'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'month' => $event_date -> format('M'),
                    'day' => $event_date -> format('d'),
                    'description' => $description,
                ));
            }
        }

        if($results['programs']) {
        // Juhul, kui $results arrays on programme,
            $programs_meta_query = array('relation' => 'OR');
            // 'relation'=>'OR' t2hendab, et arraydest ei pea t6esed olema mitte k6ik, vaid piisab yhest.

            foreach($results['programs'] as $item) {
                array_push($programs_meta_query, array(
                    'key' => 'related_programs',
                    'compare' => 'LIKE',
                    'value' => '"' . $item['id'] . '"',
                ));
            }

            $program_relationship_query = new WP_Query(array(
                'post_type' => array(
                    'professor',
                ),
                'meta_query' => $programs_meta_query,
            ));
            // Tagasta professoriga seotud programmid.

            while($program_relationship_query->have_posts()) {
                $program_relationship_query->the_post();

                if (get_post_type() == 'professor') {
                    array_push($results['professors'], array(
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'image' => get_the_post_thumbnail_url(0, 'professor_landscape'),
                    ));
                    // Kui artiklityyp on professor, lykka antud v22rtused $results['professors'] arraysse.
                } else if (get_post_type() == 'event') {
                    $event_date = new DateTime(get_field('event_date', false, false));
                    $description = NULL;
                    if(has_excerpt()) {
                        $description = get_the_excerpt();
                    } else {
                        $description =  wp_trim_words(get_the_content(), 18);
                    }
                    array_push($results['events'], array(
                        'title' => get_the_title(),
                        'permalink' => get_the_permalink(),
                        'month' => $event_date -> format('M'),
                        'day' => $event_date -> format('d'),
                        'description' => $description,
                    ));
                }

            }
            $results['professors'] = array_values(array_unique($results['professors'], SORT_REGULAR));
            $results['events'] = array_values(array_unique($results['events'], SORT_REGULAR));
            // Eemaldab duplikaadid (kui mitmes querys on sama v22rtus, v2ljastatakse otsingus neist vaid yks).
        }
        return $results;
    }