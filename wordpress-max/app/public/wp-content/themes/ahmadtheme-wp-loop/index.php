<?php /* Template: Index (auto-converted) */ ?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>GreenTech Solutions</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/sass/main.css" />
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/main.css" />
	<?php wp_head(); ?>
</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">


				   <!-- Header -->
				   <header id="header">
					   <h1>
						   <?php if ( function_exists('the_custom_logo') && has_custom_logo() ) {
							   the_custom_logo(); 
						   } else { ?>
							   <a href="<?php echo esc_url( home_url('/') ); ?>">
								   <?php bloginfo('name'); ?>
							   </a>
						   <?php } ?>
					   </h1>
					   <nav class="links">
						   <?php
						   wp_nav_menu([
							   'theme_location' => 'primary',
							   'container'      => false,
							   'items_wrap'     => '<ul>%3$s</ul>',
							   'fallback_cb'    => false,
						   ]);
						   ?>
					   </nav>
					   <nav class="main">
						   <ul>
							   <li class="search">
								   <a class="fa-search" href="#search">Search</a>
								   <form id="search" method="get" action="#">
									   <input type="text" name="query" placeholder="Search" />
								   </form>
							   </li>
							   <li class="menu">
								   <a class="fa-bars" href="#menu">Menu</a>
							   </li>
						   </ul>
					   </nav>
				   </header>


				<!-- Menu -->
					<section id="menu">

						<!-- Search -->
							<section>
								<form class="search" method="get" action="#">
									<input type="text" name="query" placeholder="Search" />
								</form>
							</section>

						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a href="#">
											<h3>Lorem ipsum</h3>
											<p>Feugiat tempus veroeros dolor</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Dolor sit amet</h3>
											<p>Sed vitae justo condimentum</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Feugiat veroeros</h3>
											<p>Phasellus sed ultricies mi congue</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Etiam sed consequat</h3>
											<p>Porta lectus amet ultricies</p>
										</a>
									</li>
								</ul>
							</section>

						<!-- Actions -->
							<section>
								<ul class="actions stacked">
									<li><a href="#" class="button large fit">Log In</a></li>
								</ul>
							</section>

					</section>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<article class="post">
    <header>
        <div class="title">
            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <?php if ( has_excerpt() ) : ?>
            <p><?php echo get_the_excerpt(); ?></p>
            <?php endif; ?>
        </div>
        <div class="meta">
            <time class="published" datetime="<?php echo esc_attr( get_the_date( DATE_W3C ) ); ?>"><?php echo esc_html( get_the_date() ); ?></time>
            <a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>" class="author"><span class="name"><?php the_author(); ?></span><?php echo get_avatar( get_the_author_meta('ID'), 64 ); ?></a>
        </div>
    </header>
    <?php if ( has_post_thumbnail() ) : ?>
    <a href="<?php the_permalink(); ?>" class="image featured">
        <?php the_post_thumbnail('large', ['class' => '']); ?>
    </a>
	<?php endif; ?>
    <p><?php echo wp_kses_post( wp_trim_words( get_the_content(), 40, '…' ) ); ?></p>
    <footer>
        <ul class="actions">
            <li><a href="<?php the_permalink(); ?>" class="button large">Continue Reading</a></li>
        </ul>
        <ul class="stats">
            <li><?php the_category(' '); ?></li>
            <li><a href="<?php comments_link(); ?>" class="icon solid fa-comment"><?php echo get_comments_number(); ?></a></li>
        </ul>
    </footer>
</article>
<?php endwhile; ?>
<div class="pagination">
    <div class="nav-previous"><?php next_posts_link( '&larr; Older posts' ); ?></div>
    <div class="nav-next"><?php previous_posts_link( 'Newer posts &rarr;' ); ?></div>
</div>
<?php else : ?>
<p><?php esc_html_e('No posts found.', 'ahmadtheme'); ?></p>
<?php endif; ?>
						<!-- Pagination -->
							<ul class="actions pagination">
								<li><a href="<?php echo get_template_directory_uri(); ?>/" class="disabled button large previous">Previous Page</a></li>
								<li><a href="#" class="button large next">Next Page</a></li>
							</ul>

					</div>

				   <!-- Sidebar -->
					   <section id="sidebar">
						   <!-- Intro -->
						   <section id="intro">
							   <header>
								   <h2>GreenTech Solutions</h2>
								   <p>Lorem ipsum</p>
							   </header>
						   </section>

						   <!-- Mini Posts Widget Area -->
						   <section>
							   <?php if ( is_active_sidebar('mini-posts') ) : ?>
								   <?php dynamic_sidebar('mini-posts'); ?>
							   <?php else : ?>
								   <div class="mini-posts">
									   <?php
									   $fallback_mini = new WP_Query([
										   'posts_per_page' => 2,
										   'post_status' => 'publish',
										   'ignore_sticky_posts' => true,
									   ]);
									   if ( $fallback_mini->have_posts() ) :
										   while ( $fallback_mini->have_posts() ) : $fallback_mini->the_post(); ?>
											   <article class="mini-post">
												   <header>
													   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
													   <time class="published" datetime="<?php echo esc_attr( get_the_date( DATE_W3C ) ); ?>"><?php echo esc_html( get_the_date() ); ?></time>
													   <a href="<?php echo esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ); ?>" class="author">
														   <?php echo get_avatar( get_the_author_meta('ID'), 32 ); ?>
													   </a>
												   </header>
												   <?php if ( has_post_thumbnail() ) : ?>
													   <a href="<?php the_permalink(); ?>" class="image">
														   <?php the_post_thumbnail('medium', ['alt' => get_the_title()]); ?>
													   </a>
												   <?php endif; ?>
											   </article>
									   <?php endwhile; wp_reset_postdata(); endif; ?>
								   </div>
							   <?php endif; ?>
						   </section>

						   <!-- Posts List Widget Area -->
						   <section>
							   <?php
							   $rendered_html = '';
							   if ( is_active_sidebar('posts-list') ) {
								   ob_start();
								   dynamic_sidebar('posts-list');
								   $rendered_html = trim(ob_get_clean());
							   }

							   $rendered_text = trim( wp_strip_all_tags( $rendered_html ) );
							   if ( ! empty( $rendered_text ) ) {
								   echo $rendered_html; // Widget output present with meaningful content
							   } else {
								   // Fallback: show next two posts (after first two)
								   ?>
								   <ul class="posts">
									   <?php
									   $fallback_list = new WP_Query([
										   'posts_per_page' => 2,
										   'post_status' => 'publish',
										   'ignore_sticky_posts' => true,
										   'offset' => 2,
									   ]);
									   if ( ! $fallback_list->have_posts() ) {
										   $fallback_list = new WP_Query([
											   'posts_per_page' => 2,
											   'post_status' => 'publish',
											   'ignore_sticky_posts' => true,
										   ]);
									   }
									   if ( $fallback_list->have_posts() ) :
										   while ( $fallback_list->have_posts() ) : $fallback_list->the_post(); ?>
											   <li>
												   <article>
													   <header>
														   <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
														   <time class="published" datetime="<?php echo esc_attr( get_the_date( DATE_W3C ) ); ?>"><?php echo esc_html( get_the_date() ); ?></time>
													   </header>
													   <?php if ( has_post_thumbnail() ) : ?>
														   <a href="<?php the_permalink(); ?>" class="image">
															   <?php the_post_thumbnail('medium', ['alt' => get_the_title()]); ?>
														   </a>
													   <?php endif; ?>
												   </article>
											   </li>
									   <?php endwhile; wp_reset_postdata(); endif; ?>
								   </ul>
							   <?php } ?>
						   </section>

						   <!-- About -->
						   <section class="blurb">
							   <h2>About</h2>
							   <p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod amet placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at phasellus sed ultricies.</p>
							   <ul class="actions">
								   <li><a href="#" class="button">Learn More</a></li>
							   </ul>
						   </section>

						   <!-- Footer -->
						   <section id="footer">
							   <ul class="icons">
								   <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
								   <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
								   <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
								   <li><a href="#" class="icon solid fa-rss"><span class="label">RSS</span></a></li>
								   <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
							   </ul>
							   <p class="copyright">&copy; Untitled.</p>
						   </section>
					   </section>


			</div>

		<!-- Scripts -->
			<script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery.min.js"></script>
			<script src="<?php echo get_template_directory_uri(); ?>/assets/js/browser.min.js"></script>
			<script src="<?php echo get_template_directory_uri(); ?>/assets/js/breakpoints.min.js"></script>
			<script src="<?php echo get_template_directory_uri(); ?>/assets/js/util.js"></script>
			<script src="<?php echo get_template_directory_uri(); ?>/assets/js/main.js"></script>

	<?php wp_footer(); ?>
</body>
</html>