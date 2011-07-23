; Global Archives Installation Profile

core = 6.x
api = 2

;
; Contrib
;
projects[better_formats][version] = 1.2
projects[better_formats][subdir] = contrib

projects[cck][version] = 2.9
projects[cck][subdir] = contrib

projects[context][version] = 3.0
projects[context][subdir] = contrib

projects[ctools][version] = 1.8
projects[ctools][subdir] = contrib

projects[date][version] = 2.7
projects[date][subdir] = contrib

projects[diff][version] = 2.2
projects[diff][subdir] = contrib

projects[features][version] = 1.0
projects[features][subdir] = contrib

projects[filefield][version] = 3.10
projects[filefield][subdir] = contrib

projects[globalredirect][version] = 1.2
projects[globalredirect][subdir] = contrib

projects[gmap][version] = 1.1
projects[gmap][subdir] = contrib

projects[imagefield][version] = 3.10
projects[imagefield][subdir] = contrib

projects[imageapi][version] = 1.10
projects[imageapi][subdir] = contrib

projects[imagecache][version] = 2.0-beta12
projects[imagecache][subdir] = contrib

projects[location][version] = 3.1
projects[location][subdir] = contrib

projects[pathauto][version] = 1.5
projects[pathauto][subdir] = contrib

projects[semanticviews][version] = 1.1
projects[semanticviews][subdir] = contrib

projects[smartcrop][version] = 1.0-beta1
projects[smartcrop][subdir] = contrib

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib

projects[term_node_count][version] = 1.3
projects[term_node_count][subdir] = contrib

projects[token][version] = 1.16
projects[token][subdir] = contrib

projects[views][version] = 2.12
projects[views][subdir] = contrib

projects[views_datasource][version] = 1.0-beta2
projects[views_datasource][subdir] = contrib

projects[jquery_ui][version] = 1.5
projects[jquery_ui][subdir] = contrib

projects[jquery_update][version] = 2.0-alpha1
projects[jquery_update][subdir] = contrib

; Admin
projects[admin][version] = 2.0
projects[admin][subdir] = contrib

projects[admin_menu][version] = 1.6
projects[admin_menu][subdir] = contrib

projects[vertical_tabs][version] = 1.0-rc2
projects[vertical_tabs][subdir] = contrib

; Custom modules
projects[gvo_reversegeo][type] = module
projects[gvo_reversegeo][subdir] = custom
projects[gvo_reversegeo][download][type] = git
projects[gvo_reversegeo][download][tag] = 6.x-1.0-alpha1
projects[gvo_reversegeo][download][url] = "https://github.com/zerolab/gvo_reversegeo.git"

projects[gvo_timemapjs][type] = module
projects[gvo_timemapjs][subdir] = custom
projects[gvo_timemapjs][download][type] = git
projects[gvo_timemapjs][download][tag] = 6.x-1.0-alpha1
projects[gvo_timemapjs][download][url] = "https://github.com/zerolab/gvo_timemapjs.git"

; Features
projects[gvo_archives_core][type] = module
projects[gvo_archives_core][subdir] = features
projects[gvo_archives_core][download][type] = git
projects[gvo_archives_core][download][tag] = 6.x-1.0-alpha1
projects[gvo_archives_core][download][url] = "https://github.com/zerolab/gvo_archives_core.git"

projects[gvo_archives_item][type] = module
projects[gvo_archives_item][subdir] = features
projects[gvo_archives_item][download][type] = git
projects[gvo_archives_item][download][tag] = 6.x-1.0-alpha1
projects[gvo_archives_item][download][url] = "https://github.com/zerolab/gvo_archives_item.git"

projects[gvo_archives_browser][type] = module
projects[gvo_archives_browser][subdir] = features
projects[gvo_archives_browser][download][type] = git
projects[gvo_archives_browser][download][tag] = 6.x-1.0-alpha1
projects[gvo_archives_browser][download][url] = "https://github.com/zerolab/gvo_archives_browser.git"

; Themes

projects[seven][version] = 1.0-rc1

projects[gvo_simple][type] = theme
projects[gvo_simple][download][type] = git
projects[gvo_reversegeo][download][tag] = 6.x-1.0-alpha1
projects[gvo_simple][download][url] = "https://github.com/zerolab/gvo_simple.git"

projects[seven][type] = theme

; Libraries
libraries[jquery_ui][download][type] = get
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/contrib/jquery_ui"

; Profiler API
libraries[profiler][download][type] = get
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-6.x-2.0-beta2.tar.gz"
