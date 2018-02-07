<?php

function university_post_types() {
  // Campus Post type
  register_post_type('campus', array(
    'capability_type' => 'campus',
    'map_meta_cap' => true,
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'campuses'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Campuses',
      'add_new_item' => 'Add New Campus',
      'edit_item' => 'Edit Campus',
      'all_items' => 'All Campuses',
      'singular_name' => 'Campus'
    ),
    'menu_icon' => 'dashicons-location-alt'
  ));

  // Event Post type
  register_post_type('event', array(
    //'capability_type' => 'event',
    'map_meta_cap' => true,
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'events'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Events',
      'add_new_item' => 'Add New Event',
      'edit_item' => 'Edit Event',
      'all_items' => 'All Events',
      'singular_name' => 'Event'
    ),
    'menu_icon' => 'dashicons-calendar'
  ));

  // Program Post Type
  register_post_type('program', array(
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'programs'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Programs',
      'add_new_item' => 'Add New Program',
      'edit_item' => 'Edit Program',
      'all_items' => 'All Programs',
      'singular_name' => 'Program'
    ),
    'menu_icon' => 'dashicons-awards'
  ));


  // Professor Post Type
  register_post_type('professor', array(
    'show_in_rest' => true,
    'supports' => array('title', 'editor', 'thumbnail'),
    'public' => true,
    'labels' => array(
      'name' => 'Lecturers',
      'add_new_item' => 'Add New Lecturer',
      'edit_item' => 'Edit Lecturer',
      'all_items' => 'All Lecturers',
      'singular_name' => 'Lecturer'
    ),
    'menu_icon' => 'dashicons-welcome-learn-more'
  ));

  // Note Post Type
  register_post_type('note', array(
    'map_meta_cap' => true,
    //'show_in_rest' => true,
    'supports' => array('title', 'editor', 'excerpt'),
    'rewrite' => array('slug' => 'note'),
    'public' => true,
    'show_ui' => true,
    'has_archive' => true,
    'labels' => array(
      'name' => 'Notes',
      'add_new_item' => 'Add New Note',
      'edit_item' => 'Edit Note',
      'all_items' => 'All Notes',
      'singular_name' => 'Note'
    ),
    'menu_icon' => 'dashicons-welcome-write-blog'
  ));

  // High-achieving Student Post Type
  register_post_type('student', array(
    //'capability_type' => 'student',
    'map_meta_cap' => true,
    //'show_in_rest' => true,
    'supports' => array('title', 'editor', "thumbnail"),
    'rewrite' => array('slug' => 'students'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Students',
      'add_new_item' => 'Add New Student',
      'edit_item' => 'Edit Student',
      'all_items' => 'All Students',
      'singular_name' => 'Student'
    ),
    'menu_icon' => 'dashicons-groups'
  ));

  // Slider Post Type
  register_post_type('slider', array(
    //'capability_type' => 'student',
    'map_meta_cap' => true,
    //'show_in_rest' => true,
    'supports' => array('title'),
    'rewrite' => array('slug' => 'sliders'),
    'has_archive' => true,
    'public' => true,
    'labels' => array(
      'name' => 'Sliders',
      'add_new_item' => 'Add New Slider',
      'edit_item' => 'Edit Slider',
      'all_items' => 'All Sliders',
      'singular_name' => 'Slider'
    ),
    'menu_icon' => 'dashicons-media-interactive'
  ));


}

add_action('init', 'university_post_types');