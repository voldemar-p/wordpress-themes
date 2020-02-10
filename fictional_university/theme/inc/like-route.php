<?php

add_action('rest_api_init', 'university_like_routes');
// rest_api_init- kui tahame lisada uut custom REST route'i

function university_like_routes() {
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'POST',
        'callback' => 'create_like',
    ));
    
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'DELETE',
        'callback' => 'delete_like',
    ));
}

function create_like($data) {
    if(is_user_logged_in()) {
        // $data kaudu lisame ligip22su kogu create_like'ga kaasask2ivale infole
        $professor = sanitize_text_field($data['professor_id']);
        // Kuna WP hoiustab RESTi infot automaatselt arrays, peame sellele ligi p22sema
        // Tagastame javascripti $professor objektist v22rtuse (lisatakse wp adminis ACFis liked professor IDsse)
        $exist_query = new WP_Query(array(
            'author' => $professor,
            'post_type' => 'like',
            'meta_query' => array(
              array(
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => $professor,
              )
            )
          ));
        if($exist_query->found_posts == 0 AND get_post_type($professor) == 'professor') {
            return wp_insert_post(array(
            // Loome v6imaluse front-endis postituse loomiseks
                'post_type' => 'like',
                'post_status' => 'publish',
                'post_title' => '2nd php test',
                'meta_input' => array(
                    'liked_professor_id' => $professor,
                    // lisame professori artiklile id
                )
            ));
        } else {
            die("Invalid professor id");
        }
        
    } else {
        die("Only logged in users can create a like.");
    } 
}

function delete_like($data) {
    $like_id = sanitize_text_field($data['like']);
    if(get_current_user_id() == get_post_field('post_author', $like_id) AND get_post_type($like_id) == 'like') {
        wp_delete_post($like_id, true);
        return 'Congrats! Like deleted.';
    } else {
        die('You dont have permission to do that.');
    }
}