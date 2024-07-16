module SpreeAnalyticsTracker
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :migrate, type: :boolean, default: true

      def add_javascripts
        javascripts_path = 'vendor/assets/javascripts/spree/frontend/all.js'
        return unless File.file?(javascripts_path)

        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/add_to_cart_analytics\n"
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/remove_from_cart_analytics\n"
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_analytics_tracker'
      end

      def run_migrations
        run_migrations = options[:migrate] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))
        if run_migrations
          run 'bin/rails db:migrate'
        else
          puts 'Skipping rails db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
