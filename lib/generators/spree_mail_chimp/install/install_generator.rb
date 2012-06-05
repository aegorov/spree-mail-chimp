module SpreeMailChimp
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        res = ask "Would you like to add the js assets now? [Y/n]"
        if res == "" || res.downcase == "y"
          append_file "app/assets/javascripts/store/all.js", "//= require store/spree_mail_chimp\n"
        else
          puts "Skiping adding js assets! Don't forget do it if you need"
        end
      end

      def add_stylesheets
        res = ask "Would you like to add the css assets now? [Y/n]"
        if res == "" || res.downcase == "y"
          inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/spree_mail_chimp\n", :before => /\*\//, :verbose => true
        else
          puts "Skiping adding css assets! Don't forget do it if you need"
        end
      end

      def add_migrations
        run 'rake railties:install:migrations FROM=spree_mail_chimp'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end