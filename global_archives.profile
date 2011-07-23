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
    'Global Archive' => st('Global Archive Configuration')
  );
}
