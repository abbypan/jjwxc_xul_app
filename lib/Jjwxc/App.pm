use strict;
use warnings;

package Jjwxc::App;
our $VERSION = "1.2";

use XUL::App::Schema;
use XUL::App schema {
    xulfile 'overlay.xul' =>
        generated from 'Jjwxc::View::Overlay',
        includes qw(jjwxc.js),
        overlays 'chrome://browser/content/browser.xul';

    xpifile "jjwxc.xpi" =>
        name is 'Jjwxc',
        display_name is 'Jjwxc',
        id is 'abbypan@gmail.com-jjwxc-200812011635',
        version is '1.2',
        description is
        '绿晋江(http://www.jjwxc.net)网站小说的右键查询菜单。',
        targets {
        Firefox => [ '2.0' => '4.0.*' ],
        Mozilla => [ '1.5' => '1.8' ],
        },
        creator is 'Abby Pan',
        developers are   ['abbypan'],
        contributors are [],
        homepageURL is
        'https://addons.mozilla.org/zh-CN/firefox/addon/10210',
        iconURL is 'chrome://jjwxc/content/ljj-logo.png',
        updateURL is '',    # This should not set for AMO extensions.
        aboutURL is '';
};

1;
