<?php 

    get_header();

    while(have_posts()) {
        the_post();
        page_banner();
?> 
  <div class="container container--narrow page-section">>
    <?php
        $parent_id = wp_get_post_parent_id(get_the_ID());
        if ($parent_id) { ?>
            <div class="metabox metabox--position-up metabox--with-home-link">
                <p>
                    <a class="metabox__blog-home-link" href="<?php echo get_permalink($parent_id); ?>">
                        <i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($parent_id);?>
                    </a>
                    <span class="metabox__main"><?php the_title(); ?></span>
                </p>
            </div>
        <?php 
        }
    ?>
    
    <?php 
        $test_array= get_pages(array( 
        // get_pages on sama, mis wp_list_pages, ainult et ta ei v2ljasta midagi, vaid tagastab.
            'child_of' => get_the_ID() 
            // kui on olemas child lehed, v2ljasta need.
        ));
        if($parent_id or $test_array) { ?> 
        <!-- Kui lehel on parent v6i child lehed, siis tee j2rgmist: -->

        <div class="page-links">
            <h2 class="page-links__title"><a href="<?php echo get_permalink($parent_id); ?>">
            <?php echo get_the_title($parent_id); ?></a></h2>
            <ul class="min-list">
                <?php
                    if ($parent_id) { 
                    // Kui lehel on olemas parent leht,
                        $find_children_of = $parent_id; 
                        // Siis v2ljastatakse parent lehe link.
                    } else {
                        $find_children_of = get_the_ID(); 
                        // Kui ei ole parent lehte, V2ljastatakse k2esoleva lehe link.
                    }

                    wp_list_pages(array(  
                    // V2ljastab lehtede nimekirja parentite ja childidena, vajab argumentideks associative array elemente.
                        'title_li' => NULL, 
                        // T2hendab, et pealkiri eemaldatakse wp_list_pages-ist.
                        'child_of' => $find_children_of, 
                        // v2ljastab child lehtede lingid, kui neid on.
                        'sort_column' => 'menu_order' 
                        // Sorteerib menuu vastavalt wp page attributes order numbri j2rgi.
                    ));
                ?>
            </ul>
        </div>
    <?php } ?>

    <div class="generic-content">
        <?php the_content(); ?>
    </div>

<?php }
    get_footer();
?>
