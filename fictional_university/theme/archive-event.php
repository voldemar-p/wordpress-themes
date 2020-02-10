<?php  
  get_header();
  page_banner(array(
    'title' => 'All Events',
    'subtitle' => 'See what is going on in our world'
  ));
?>

  <div class="container container--narrow page-section">
    <?php
      while(have_posts()) { // Kasutame siin while loopi sellep2rast, et tahame teha midagi eranditult iga artikli jaoks.
        the_post();
        get_template_part('/template-parts/content-event');
      }
        echo paginate_links(); // Annab lehele lingid j2rgmiste tulemusteni (nt see more posts -> j2rgmine leht postitusi).                 
    ?>
    <hr class="section-break">
    <p>Looking for a recap for past events? <a href="<?php echo site_url('/past-events') ?>">Check out our past events archive.</a></p>
  </div>

  <?php get_footer(); ?>