<?php 

    if(!is_user_logged_in()) {
        wp_redirect(esc_url(site_url('/')));
        // Kui kasutaja ei ole sisse logitud, suuna ta kodulehele (2ra suuna teda my notes lehele)
        exit;
    }

    get_header();

    while(have_posts()) {
        the_post();
        page_banner();
?> 

  <div class="container container--narrow page-section">
      <div class="create-note">
          <h2 class="headline headline--medium">Create New Note</h2>
          <input class="new-note-title" placeholder="title">
          <textarea class="new-note-body" placeholder="Your note here..."></textarea>
          <span class="submit-note">Create Note</span>
          <span class="note-limit-message">Note limit reached</span>
      </div>
    <ul class="min-list link-list" id="my-notes">
        <?php 
        $user_notes = new WP_Query(array(
            'post_type' => 'note',
            'posts_per_page' => -1,
            'author_id' => get_current_user_id(),
        )); 

        while($user_notes->have_posts()) {
            $user_notes->the_post(); ?>
            <li data-id="<?php the_ID(); ?>">
            <!-- Artikli ID nr on html-i hoiustatud data id-nimelisse muutujasse (vajalik javascriptiks) -->
                <input readonly class="note-title-field" value="<?php echo str_replace('Private: ', '', esc_attr(get_the_title())); ?>">
                <!-- Asenda pealkirjas s6na Private tyhja v2ljaga (pmts kustuta see) -->
                <span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</span>
                <span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"></i>Delete</span>
                <textarea readonly class="note-body-field"><?php echo esc_textarea(wp_strip_all_tags(get_the_content())); ?></textarea>
                <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"></i>Save</span>
            </li>
        <?php } ?>
    </ul>
  </div>

    <?php }
        get_footer();
?>
