<?php
!function_exists('profiler_v2') ? require_once('profiles/global_archives/libraries/profiler/profiler.inc') : FALSE;
profiler_v2('global_archives');


/*
variables[pathauto_node_pattern] = 0
variables[pathauto_node_item_pattern] = item/[title-raw]
*/

/**
 *  Implementation of hook_profile_task_list()
 */
function global_archives_profile_task_list() {
  return array(
    'Global Archives' => st('Configure Global Archives')
  );
}


/**
 * Implements hook_profile_tasks().
 */
function global_archives_profile_tasks(&$task, $url) {
  if ($task == 'profile') {
    // Create a basic page content type.
    $types = array(
      array(
        'type' => 'page',
        'name' => st('Page'),
        'module' => 'node',
        'description' => st("A <em>page</em> is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site's initial home page."),
        'custom' => TRUE,
        'modified' => TRUE,
        'locked' => FALSE,
        'help' => '',
        'min_word_count' => '',
      ),
    );

    foreach ($types as $type) {
      $type = (object) _node_type_set_defaults($type);
      node_type_save($type);
    }

    // Let profiler module do it's thing.
    include_once('profiles/global_archives/libraries/profiler/profiler_api.inc');
    profiler_profile_tasks(profiler_v2_load_config('global_archives'), $task, $url);
    // Profiler sets the $task to 'profile-finished', in order to add our own
    // tasks we need to override that and set it to our task.
    if (defined('DRUSH_BASE_PATH')) {
      $task = 'profile-finished'; // Required to support Aegir.
    }
    else {
      $task = 'global_archives';
    }
  }

  if ($task == 'global_archives') {
    // Get the configuration form.
    $output = drupal_get_form('global_archives_profile_form', $url);
    // We can't use redirection in profiles so we need a different method for
    // tracking if the form has been submitted or not.
    if (!variable_get('global_archives_profile_form', FALSE)) {
      drupal_set_title(st('Configure Global Archives'));
      return $output;
    }
    else {
      // Form was submitted, advance to the next task.
      variable_del('global_archives_profile_form');
      $task = 'profile-finished';
    }
  }
}

/**
 * Global Archives profile configuration form during install
 */
function global_archives_profile_form(&$form_state, $url) {
  $form['googlemap_api_key'] = array(
    '#type' => 'textfield',
    '#title' => st('Google Maps API Key'),
    '#description' => st('Your personal Googlemaps API key. You must get this for each separate website at <a href="http://www.google.com/apis/maps/">Google Maps API site</a>.'),
    '#size' => 20,
  );

  $form['continue'] = array(
    '#type' => 'submit', 
    '#value' => st('Continue'),
  );

  // #action is set to the url passed through from installer, 
  // ensuring it points to the same page, and
  // #redirect is FALSE to avoid broken installer workflow.
  $form['errors'] = array();
  $form['#action'] = $url;
  $form['#redirect'] = FALSE;

  return $form;
}

/**
 * Submit handler for global_archives_profile configuration form.
 */
function global_archives_profile_form_submit($form, &$form_state) {
  
  if ($form_state['values']['googlemap_api_key'] && !empty($form_state['values']['googlemap_api_key'])) {
  	variable_set('googlemap_api_key', check_plain($form_state['values']['googlemap_api_key']));
  }

  // Notify global_archives_profile_tasks that the form has been submitted and
  // it can continue
  variable_set('global_archives_profile_form', TRUE);
}