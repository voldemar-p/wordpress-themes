<?php 

    get_header();

    while(have_posts()) {
        the_post();
        page_banner();
?> 

  <div class="container container--narrow page-section">
    <div class="metabox metabox--position-up metabox--with-home-link">
      <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('event'); ?>">
      <i class="fa fa-home" aria-hidden="true"></i> Events home </a>
      <span class="metabox__main"><?php the_title(); ?>
      </span></p>
    </div>
    <div class="generic-content"><?php the_content(); ?></div>
      <?php
        $related_programs = get_field('related_programs'); 
        // Tegu on arrayga, v6tab ACF-ist valitud v22rtuse.
        if($related_programs) { 
        // Kui lehel on related programme, siis teeme midagi.
          echo '<hr class="section-break">';
          echo '<h2 class="headline headline--medium">Related Program(s)</h2>';
          echo '<ul class="link-list min-list">';

          foreach($related_programs as $program) { 
          // $program - wordpress post object, lihtsalt nimi igale argumendile.
          // foreach teeb midagi iga m22ratud elemendi korral. ?>
            <li><a href="<?php echo get_the_permalink($program); ?>"><?php echo get_the_title($program); ?></a></li>
          <?php }
          echo '</ul>';
        }
      ?>
  </div>

<?php }
  get_footer();
?>
