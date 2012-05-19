Deface::Override.new(:virtual_path  => 'admin/configurations/index',
                     :name          => 'add_mail_chimp_admin_menu_link',
                     :insert_bottom => "[data-hook='admin_configurations_menu']",
                     :partial       => 'admin/configurations/spree_mail_chimp_configuration_link' )
