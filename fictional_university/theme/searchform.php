<form class="search-form" method="get" action="<?php echo esc_url(site_url('/')); ?>">
<!-- get - otsingusse sisestatud v22rtus v2ljastatakse url-is -->
<!-- esc_url - parendab lehe turvalisust -->
    <label class="headline headline--medium" for="s">Perform a New Search</label>
    <div class="search-form-row">
        <input placeholder="What are you looking for?" class="s" id="s" type="search" name="s">
        <input class="search-submit" type="submit" value="Search">
    </div>
</form>