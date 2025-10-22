<?php

// Custom Mini Posts Widget
class AhmadTheme_Mini_Posts_Widget extends WP_Widget {
  function __construct() {
    parent::__construct(
      'ahmadtheme_mini_posts_widget',
      __('Mini Posts Widget', 'ahmadtheme'),
      ['description' => __('Shows recent posts in mini-posts style', 'ahmadtheme')]
    );
  }

  public function widget($args, $instance) {
    $title  = !empty($instance['title']) ? $instance['title'] : __('Mini Posts', 'ahmadtheme');
    $count  = isset($instance['count']) ? absint($instance['count']) : 2;
    $offset = isset($instance['offset']) ? absint($instance['offset']) : 0;
    echo $args['before_widget'];
    if ($title) {
      echo $args['before_title'] . esc_html($title) . $args['after_title'];
    }
    echo '<div class="mini-posts">';
    $mini_query = new WP_Query([
      'posts_per_page' => $count,
      'post_status' => 'publish',
      'ignore_sticky_posts' => true,
      'offset' => $offset,
    ]);
    if ($mini_query->have_posts()) {
      while ($mini_query->have_posts()) {
        $mini_query->the_post();
        echo '<article class="mini-post">';
        echo '<header>';
        echo '<h3><a href="' . esc_url(get_permalink()) . '">' . get_the_title() . '</a></h3>';
        echo '<time class="published" datetime="' . esc_attr(get_the_date(DATE_W3C)) . '">' . esc_html(get_the_date()) . '</time>';
        echo '<a href="' . esc_url(get_author_posts_url(get_the_author_meta('ID'))) . '" class="author">' . get_avatar(get_the_author_meta('ID'), 32) . '</a>';
        echo '</header>';
        if (has_post_thumbnail()) {
          echo '<a href="' . esc_url(get_permalink()) . '" class="image">';
          echo get_the_post_thumbnail(get_the_ID(), 'medium', ['alt' => get_the_title()]);
          echo '</a>';
        }
        echo '</article>';
      }
      wp_reset_postdata();
    }
    echo '</div>';
    echo $args['after_widget'];
  }

  public function form($instance) {
    $title  = !empty($instance['title']) ? $instance['title'] : __('Mini Posts', 'ahmadtheme');
    $count  = isset($instance['count']) ? absint($instance['count']) : 2;
    $offset = isset($instance['offset']) ? absint($instance['offset']) : 0;
    ?>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('title')); ?>">Title:</label>
      <input class="widefat" id="<?php echo esc_attr($this->get_field_id('title')); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text" value="<?php echo esc_attr($title); ?>" />
    </p>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('count')); ?>">Number of posts:</label>
      <input class="tiny-text" id="<?php echo esc_attr($this->get_field_id('count')); ?>" name="<?php echo esc_attr($this->get_field_name('count')); ?>" type="number" step="1" min="1" value="<?php echo esc_attr($count); ?>" size="3" />
    </p>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('offset')); ?>">Offset (skip first N posts):</label>
      <input class="tiny-text" id="<?php echo esc_attr($this->get_field_id('offset')); ?>" name="<?php echo esc_attr($this->get_field_name('offset')); ?>" type="number" step="1" min="0" value="<?php echo esc_attr($offset); ?>" size="3" />
    </p>
    <?php
  }

  public function update($new_instance, $old_instance) {
    $instance = [];
    $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
    $instance['count'] = (isset($new_instance['count'])) ? absint($new_instance['count']) : 2;
    $instance['offset'] = (isset($new_instance['offset'])) ? absint($new_instance['offset']) : 0;
    return $instance;
  }
}

function ahmadtheme_register_mini_posts_widget() {
  register_widget('AhmadTheme_Mini_Posts_Widget');
}
add_action('widgets_init', 'ahmadtheme_register_mini_posts_widget');

// Custom Posts List Widget (small list style)
class AhmadTheme_Posts_List_Widget extends WP_Widget {
  function __construct() {
    parent::__construct(
      'ahmadtheme_posts_list_widget',
      __('Posts List Widget', 'ahmadtheme'),
      ['description' => __('Shows posts list in sidebar style', 'ahmadtheme')]
    );
  }

  public function widget($args, $instance) {
    $title  = !empty($instance['title']) ? $instance['title'] : __('More Posts', 'ahmadtheme');
    $count  = isset($instance['count']) ? absint($instance['count']) : 2;
    $offset = isset($instance['offset']) ? absint($instance['offset']) : 2; // default to next 2

    $list_query = new WP_Query([
      'posts_per_page' => $count,
      'post_status' => 'publish',
      'ignore_sticky_posts' => true,
      'offset' => $offset,
    ]);

    // If no posts found with the given offset, fall back to latest posts
    if (!$list_query->have_posts()) {
      $list_query = new WP_Query([
        'posts_per_page' => $count,
        'post_status' => 'publish',
        'ignore_sticky_posts' => true,
      ]);
    }

    if ($list_query->have_posts()) {
      echo $args['before_widget'];
      if ($title) {
        echo $args['before_title'] . esc_html($title) . $args['after_title'];
      }
      echo '<ul class="posts">';
      while ($list_query->have_posts()) {
        $list_query->the_post();
        echo '<li>';
        echo '<article>';
        echo '<header>';
        echo '<h3><a href="' . esc_url(get_permalink()) . '">' . get_the_title() . '</a></h3>';
        echo '<time class="published" datetime="' . esc_attr(get_the_date(DATE_W3C)) . '">' . esc_html(get_the_date()) . '</time>';
        echo '</header>';
        if (has_post_thumbnail()) {
          echo '<a href="' . esc_url(get_permalink()) . '" class="image">' . get_the_post_thumbnail(get_the_ID(), 'medium', ['alt' => get_the_title()]) . '</a>';
        }
        echo '</article>';
        echo '</li>';
      }
      wp_reset_postdata();
      echo '</ul>';
      echo $args['after_widget'];
    }
  }

  public function form($instance) {
    $title  = !empty($instance['title']) ? $instance['title'] : __('More Posts', 'ahmadtheme');
    $count  = isset($instance['count']) ? absint($instance['count']) : 2;
    $offset = isset($instance['offset']) ? absint($instance['offset']) : 2;
    ?>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('title')); ?>">Title:</label>
      <input class="widefat" id="<?php echo esc_attr($this->get_field_id('title')); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text" value="<?php echo esc_attr($title); ?>" />
    </p>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('count')); ?>">Number of posts:</label>
      <input class="tiny-text" id="<?php echo esc_attr($this->get_field_id('count')); ?>" name="<?php echo esc_attr($this->get_field_name('count')); ?>" type="number" step="1" min="1" value="<?php echo esc_attr($count); ?>" size="3" />
    </p>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('offset')); ?>">Offset (skip first N posts):</label>
      <input class="tiny-text" id="<?php echo esc_attr($this->get_field_id('offset')); ?>" name="<?php echo esc_attr($this->get_field_name('offset')); ?>" type="number" step="1" min="0" value="<?php echo esc_attr($offset); ?>" size="3" />
    </p>
    <?php
  }

  public function update($new_instance, $old_instance) {
    $instance = [];
    $instance['title']  = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
    $instance['count']  = (isset($new_instance['count'])) ? absint($new_instance['count']) : 2;
    $instance['offset'] = (isset($new_instance['offset'])) ? absint($new_instance['offset']) : 2;
    return $instance;
  }
}

function ahmadtheme_register_posts_list_widget() {
  register_widget('AhmadTheme_Posts_List_Widget');
}
add_action('widgets_init', 'ahmadtheme_register_posts_list_widget');

// Register Sidebar Widget Area
function ahmadtheme_widgets_init() {
  register_sidebar([
    'name'          => 'Mini Posts',
    'id'            => 'mini-posts',
    'before_widget' => '<div class="widget mini-posts-widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widget-title">',
    'after_title'   => '</h3>',
  ]);
  register_sidebar([
    'name'          => 'Posts List',
    'id'            => 'posts-list',
    'before_widget' => '<div class="widget posts-list-widget %2$s">',
    'after_widget'  => '</div>',
    'before_title'  => '<h3 class="widget-title">',
    'after_title'   => '</h3>',
  ]);
}
add_action('widgets_init', 'ahmadtheme_widgets_init');

// Example Custom Widget
class AhmadTheme_Custom_Widget extends WP_Widget {
  function __construct() {
    parent::__construct(
      'ahmadtheme_custom_widget',
      __('Ahmad Custom Widget', 'ahmadtheme'),
      ['description' => __('A Custom Widget for AhmadTheme', 'ahmadtheme')]
    );
  }

  public function widget($args, $instance) {
    echo $args['before_widget'];
    if (!empty($instance['title'])) {
      echo $args['before_title'] . apply_filters('widget_title', $instance['title']) . $args['after_title'];
    }
    echo '<p>Hello, this is AhmadTheme custom widget!</p>';
    echo $args['after_widget'];
  }

  public function form($instance) {
    $title = !empty($instance['title']) ? $instance['title'] : __('New title', 'ahmadtheme');
    ?>
    <p>
      <label for="<?php echo esc_attr($this->get_field_id('title')); ?>">Title:</label>
      <input class="widefat" id="<?php echo esc_attr($this->get_field_id('title')); ?>" name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text" value="<?php echo esc_attr($title); ?>" />
    </p>
    <?php
  }

  public function update($new_instance, $old_instance) {
    $instance = [];
    $instance['title'] = (!empty($new_instance['title'])) ? strip_tags($new_instance['title']) : '';
    return $instance;
  }
}

function ahmadtheme_register_custom_widget() {
  register_widget('AhmadTheme_Custom_Widget');
}
add_action('widgets_init', 'ahmadtheme_register_custom_widget');
if ( ! defined( 'ABSPATH' ) ) { exit; }

add_action('after_setup_theme', function () {
  add_theme_support('title-tag');
  add_theme_support('post-thumbnails');
  add_theme_support('custom-logo', [
    'height' => 100, 'width' => 300, 'flex-height' => true, 'flex-width' => true,
  ]);
  register_nav_menus([
    'primary' => __('Primary Menu', 'ahmadtheme'),
  ]);
});

// (optional) enqueue CSS properly
add_action('wp_enqueue_scripts', function () {
  wp_enqueue_style('ahmadtheme-main', get_template_directory_uri() . '/assets/css/main.css', [], null);
});
