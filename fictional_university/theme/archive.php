<?php  
  get_header();
  page_banner(
    array(
      'title' => get_the_archive_title(),
      'subtitle' => get_the_archive_description()
    )
  );  
?>

  <div class="container container--narrow page-section">
    <?php
      while(have_posts()) { // Kasutame siin while loopi sellep2rast, et tahame teha midagi eranditult iga artikli jaoks.
          the_post(); ?>
            <div class="post-item">
              <h2 class="headline headline--medium headline--post-title"><a href="<?php the_permalink(); ?>"> <?php the_title(); ?> </a></h2>
              <div class="metabox">
                <p>Posted by <?php the_author_posts_link(); ?> on <!-- v2ljastab postituse autori ja lingi temani -->
                <?php the_time('j.n.y'); ?> in <?php echo get_the_category_list(', '); ?></p> <!-- aeg ja kategooria -->
              </div>
              <div class="generic-content">
                <?php the_excerpt(); ?> <!-- excerpt annab blogi alguse lyhivormis -->
                <p><a class="btn btn--blue" href="<?php the_permalink(); ?>">Continue reading</a></p>
              </div>
            </div>
        <?php }
          echo paginate_links(); // annab lehele lingid j2rgmiste tulemusteni (nt see more posts -> j2rgmine leht postitusi).
    ?>
  </div>

<?php get_footer(); ?>