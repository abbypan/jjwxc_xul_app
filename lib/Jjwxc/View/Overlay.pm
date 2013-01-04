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
                    image       => "chrome://jjwxc/content/jjwxc16.png",
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
                            oncommand => 'query_ljj("cse");',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zuopin",
                            label     => _('book'),
                            oncommand => 'query_ljj("book");',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zuozhe",
                            label     => _('writer'),
                            oncommand => 'query_ljj("writer")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-zhujue",
                            label     => _('lead'),
                            oncommand => 'query_ljj("lead")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-peijue",
                            label     => _('support'),
                            oncommand => 'query_ljj("support")',
                        }
                    }
                    menuitem {
                        attr {
                            id        => "ljj-query-qita",
                            label     => _("other"),
                            oncommand => 'query_ljj("other")',
                        }
                    }
                }

            }
        }

    }
};
1;
