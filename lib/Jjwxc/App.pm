use strict;
use warnings;

package Jjwxc::App;
our $VERSION = "1.3";

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
        version is '1.3',
        description is
        "绿晋江(http://www.jjwxc.net)网站小说的右键查询菜单。
        在当前网页选中关键字，通过右键菜单选择查询类型，自动在新标签页载入查询结果。
        关键字的模糊查询不仅限于绿晋江，采用 bubble7733 的google自定义搜索引擎。",
        targets {
            Firefox => [ '2.0' => '20.*' ],
        },
        creator is 'Abby Pan',
        developers are   ['abbypan'],
        contributors are [],
        homepageURL is
        'https://addons.mozilla.org/zh-CN/firefox/addon/10210',
        iconURL is 'chrome://jjwxc/content/jjwxc32.png',
        updateURL is '',    # This should not set for AMO extensions.
        aboutURL is '';
        type are [ qw/novel search/ ], 
};

1;
