use strict;
use warnings;

package Jjwxc::View::Overlay;
use base 'XUL::App::View::Base';
use Template::Declare::Tags

  #'HTML' => { namespace => 'html' },  # HTML namespace support
  'XUL';

template main => sub {
    show 'header';    # from XUL::App::View::Base
    overlay {
        attr {
            id    => "jjwxc-overlay",
            xmlns => $::XUL_NAME_SPACE,

            #'xmlns:html' => $::HTML_NAME_SPACE,  # HTML namespace support

          }

          # Add your elements here...
          popup {
            attr { 
                id => "contentAreaContextMenu"
            } 
            menu {
                attr {
                    image       => "chrome://jjwxc/content/ljj-logo-small.png",
                    id          => "right-click-Jjwxc",
                    label       => _('jjwxc'),
                    class       => "menu-iconic",
                    insertafter => "context-sep-selectall",

                    #                    accesskey => "S",
                    #                    oncommand => "contextjjwxc('$URI');",
                  } 
                  menupopup {
                    attr { id => "ljj-query-popup" }
                    menuitem {
                        attr {
                            id        => "google-query",
                            label     => _('blur'),
                            oncommand => 'ljj_query("cse");',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zuopin",
                            label     => _('book'),
                            oncommand => 'ljj_query("book");',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zuozhe",
                            label     => _('writer'),
                            oncommand => 'ljj_query("writer")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zhujue",
                            label     => _('lead role'),
                            oncommand => 'ljj_query("lead role")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-peijue",
                            label     => _('support role'),
                            oncommand => 'ljj_query("support role")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-qita",
                            label     => _("other"),
                            oncommand => 'ljj_query("other")',
                        }
                    }
                }

            }
        }

    }
};
1;
