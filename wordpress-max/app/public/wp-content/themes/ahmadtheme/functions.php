<?php
/**
 * AhmadTheme functions and definitions
 */
if ( ! defined( 'ABSPATH' ) ) { exit; }

add_action( 'after_setup_theme', function() {
    add_theme_support( 'title-tag' );
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'custom-logo', [
        'height'      => 100,
        'width'       => 300,
        'flex-height' => true,
        'flex-width'  => true,
    ]);
    register_nav_menus([
        'primary' => __( 'Primary Menu', 'ahmadtheme' ),
    ]);
});

// Keep assets as in original HTML. If you want to enqueue, you can migrate links into wp_enqueue_scripts later.
