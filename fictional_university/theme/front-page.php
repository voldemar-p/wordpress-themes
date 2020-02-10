<?php get_header(); ?>
<!--get_header() sisestab ja prindib header.php sisu -->

<div class="page-banner">

  <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/library-hero.jpg') ?>);"></div>
    <div class="page-banner__content container t-center c-white">
      <h1 class="headline headline--large">Hello!</h1>
      <h2 class="headline headline--medium">We think you&rsquo;ll like it here.</h2>
      <h3 class="headline headline--small">Why don&rsquo;t you check out the <strong>major</strong> you&rsquo;re interested in?</h3>
      <a href="<?php echo get_post_type_archive_link('program'); ?>" class="btn btn--large btn--blue">Find Your Major</a>
    </div>
  </div>

  <div class="full-width-split group">
    <div class="full-width-split__one">
      <div class="full-width-split__inner">
        <h2 class="headline headline--small-plus t-center">Upcoming Events</h2>
        
          <?php
            $today = date('Ymd');
            // V2ljastab t2nase kuup2eva.
            $homepage_events = new WP_Query(array( 
            // Loome klassi, millega kontrollida, mida artikli loetelu puhul kuvatakse.
              'posts_per_page' => 2, 
              // -1 t2hendab, et loetelus kuvatakse k6ik olemasolevad artiklid.
              'post_type' => 'event', 
              // Millise artiklityybi kohta antud objekt kehtib.
              'meta_key' => 'event_date', 
              // Siin m22rame meta_value (millist meta value kasutame).
              'orderby' => 'meta_value_num', 
              // Mille j2rgi artikleid loetelus j2rjestame. Vaikimisi j2rjestatakse suuremast v2iksemaks.
              // meta_value v6tab m22ratud custom v22rtuse (nt ACF-i v2lja), _num seal l6pus n2itab, et sorteerime numbriliste v22rtuste j2rgi.
              'order' => 'ASC', 
              // Muudab j2rjekorra v2iksem -> suurem.
              'meta_query' => array( 
              // Anname metale mitu tingimust, mille j2rgi orienteeruda.
                array( 
                // Igale tingimusele m22rame parameetrid.
                  'key' => 'event_date', 
                  // Millise parameetri j2rgi sorteerime (mis on peamine parameeter),
                  'compare' => '>=', 
                  // Kuidas v6rdleme, milline on v6rduse suhe (antud juhul >=),
                  'value' => $today, 
                  // Millega me peamist parameetrit v6rdleme,
                  'type' => 'numeric', 
                  // Mida v6rdleme (antud juhul numbreid).
                ),
              ),
            )); 

            while($homepage_events->have_posts()) {
              $homepage_events->the_post();
              get_template_part('template-parts/content', 'event'); 
              // Kutsume template parts kaustast eventi faili.
           }
          ?>

        <p class="t-center no-margin"><a href="<?php echo get_post_type_archive_link('event'); ?>" class="btn btn--blue">View All Events</a></p>
      </div>
    </div>

    <div class="full-width-split__two">
      <div class="full-width-split__inner">
        <h2 class="headline headline--small-plus t-center">From Our Blogs</h2>
        <?php
            $homepage_posts = new WP_Query(array( 
            // Objekt (element, millele saab omistada k2ep2raseid v22rtuseid).
                'posts_per_page' => 2,
            ));

            while($homepage_posts -> have_posts()) {
                $homepage_posts -> the_post(); ?>
                <div class="event-summary">
                    <a class="event-summary__date event-summary__date--beige t-center" href="<?php echo get_permalink(); ?>">
                        <span class="event-summary__month"><?php the_time('M'); ?></span>
                        <span class="event-summary__day"><?php the_time('d'); ?></span>  
                    </a>
                    <div class="event-summary__content">
                        <h5 class="event-summary__title headline headline--tiny"><a href="<?php echo get_permalink(); ?>"><?php the_title(); ?></a></h5>
                        <p><?php if (has_excerpt()) {
                          echo get_the_excerpt(); 
                          // Kui lehele on kirjutatud excerpt, siis v2ljasta see.
                        } else {
                          echo wp_trim_words(get_the_content(), 18); 
                          // Trimmi s6nu vastava numbrini, millest?(contentist).
                        }
                        ?> 
                        <a href="<?php echo get_permalink(); ?>" class="nu gray">Read more</a></p>
                    </div>
                </div>
            <?php } wp_reset_postdata(); 
            // L2heb custom queryst v2lja tagasi wp vaike queride peale
        ?>
        
        <p class="t-center no-margin"><a href="<?php echo site_url('/blog'); ?>" class="btn btn--yellow">View All Blog Posts</a></p>
      </div>
    </div>
  </div>

  <div class="hero-slider">
  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/bus.jpg')?>;">
    <div class="hero-slider__interior container">
      <div class="hero-slider__overlay">
        <h2 class="headline headline--medium t-center">Free Transportation</h2>
        <p class="t-center">All students have free unlimited bus fare.</p>
        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
      </div>
    </div>
  </div>
  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/apples.jpg')?>;">
    <div class="hero-slider__interior container">
      <div class="hero-slider__overlay">
        <h2 class="headline headline--medium t-center">An Apple a Day</h2>
        <p class="t-center">Our dentistry program recommends eating apples.</p>
        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
      </div>
    </div>
  </div>
  <div class="hero-slider__slide" style="background-image: url(<?php echo get_theme_file_uri('images/bread.jpg')?>;">
    <div class="hero-slider__interior container">
      <div class="hero-slider__overlay">
        <h2 class="headline headline--medium t-center">Free Food</h2>
        <p class="t-center">Fictional University offers lunch plans for those in need.</p>
        <p class="t-center no-margin"><a href="#" class="btn btn--blue">Learn more</a></p>
      </div>
    </div>
  </div>
</div>

<?php get_footer(); ?>
