Global Archives
===============

Global Archives is a simple, flexible, feature-rich solution for keeping track of historic events or items with location information.

Global Archives is a base Drupal installation profile for easy creation of [Timemap.js](http://code.google.com/p/timemap/) enabled projects.
The package consists of two drush make files that take care of all the project dependecies. It also makes use of the 
[Profiler](http://drupal.org/project/profiler) module for initial configuration.

The easiset way to get started is by using [Drush make](http://drupal.org/project/drush_make) and git installed on your machine:

`drush make https://raw.github.com/zerolab/global_archives/master/global_archives_starter.make global_archives`

Once the package is generated, copy `sites/default/default.settings.php` to `sites/default/settings.php` and enter your database details. 
Or, simply follow the Drupal installation instructions and any errors it may throw.

After the installation is complete, go to `/admin/settings/site-information` to change the site name and email address.

Credit:  
Original idea, Sami Ben Gharbia for [Global Voices Advocacy](http://advocacy.globalvoicesonline.org/)  
Bits and pieces of inspiration taken from [Development Seed](http://developmentseed.org) and Lullabot's [Videola](https://github.com/Lullabot/videola)
