Deface::Override.new(:virtual_path => 'shared/_footer',
                     :name         => 'add_newsletter_form_to_footer',
                     :insert_top   => 'div#footer_left',
                     :partial      => 'shared/newsletter_subscribe_form' )
