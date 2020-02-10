<?php  
  get_header();
  page_banner(array(
    'title' => 'Past Events',
    'subtitle' => 'Recap of our past events'
  )); 
?>

  <div class="container container--narrow page-section">
    <?php
      $today = date('Ymd');
      $past_events = new WP_QUERY(array(
          'paged' => get_query_var('paged', 1),
          // T2hendab, et otsib slugi 'paged', kui seda ei leia, siis otsi nr 1.
          'post_type' => 'event',
          'meta_key' => 'event_date',
          'orderby' => 'meta_value_num',
          'order' => 'ASC',
          'meta_query' => array(
              array(
                  'key' => 'event_date',
                  'compare' => '<',
                  'value' => $today,
                  'type' => 'numeric',
              )
          )
      ));

        while($past_events->have_posts()) {
        // Kasutame siin while loopi sellep2rast, et tahame teha midagi eranditult iga artikli jaoks.
            $past_events->the_post();
            get_template_part('/template-parts/content-event');  
          }
            echo paginate_links(array(
                'total' => $past_events->max_num_pages,
                // N2ita past_eventsi queryst k6iki artikleid.
            ));
    ?>
  </div>

  <?php get_footer(); ?>