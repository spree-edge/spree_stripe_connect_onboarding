module SpreeStripeConnectStandardOnboarding
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :migrate, type: :boolean, default: true

      source_root File.expand_path("../templates", __FILE__)

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_stripe_connect_standard_onboarding'
      end

      def run_migrations
        run_migrations = options[:migrate] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))
        if run_migrations
          run 'bundle exec rails db:migrate'
        else
          puts 'Skipping rails db:migrate, don\'t forget to run it!'
        end
      end

      def copy_initializer
        template 'stripe.rb', 'config/initializers/stripe.rb'
      end
    end
  end
end
