<?php /* Template: Single (auto-converted) */ ?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>GreenTech Solutions</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/sass/main.css" />
	<?php wp_head(); ?>
</head>
	<body class="single is-preload">

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
            <h2><?php the_title(); ?></h2>
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
    <div class="content">
        <?php the_content(); ?>
    </div>
    <footer>
        <ul class="stats">
            <li><?php the_category(' '); ?></li>
            <li><?php the_tags(); ?></li>
        </ul>
    </footer>
</article>
<?php endwhile; endif; ?>


					</div>

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