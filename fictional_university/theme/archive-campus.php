<?php  
  get_header();
  page_banner(array(
    'title' => 'Our Campuses',
    'subtitle' => 'We have several conveniently located campuses.'
  ));
?>

  <div class="container container--narrow page-section">
    <div class="acf-map">
      <?php
        while(have_posts()) {
          the_post();
          $map_location = get_field('map_location');
          ?>
          <div class="marker">
            <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
          </div>
      <?php } ?>
    </div>
  </div>

<?php get_footer(); ?>