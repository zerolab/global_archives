; Stub makefile for the Global Archives project.
; Get Drupal core and the global_archives profile which contains a .make file that will
; download all the required projects/libraries.

core = 6.x
api = 2

projects[] = drupal

; If you want to use Pressflow Drupal, uncomment out the following three lines
; projects[pressflow][type] = core
; projects[pressflow][download][type] = file
; projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.22.104/+download/pressflow-6.22.104.tar.gz"

projects[gvo_distro][type] = profile
projects[gvo_distro][download][type] = git
projects[gvo_distro][download][url] = "https://github.com/zerolab/global_archives.git"
