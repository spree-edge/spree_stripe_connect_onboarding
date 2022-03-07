module SpreeStripeConnectStandardOnboarding
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_stripe_connect_standard_onboarding'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'spree_stripe_connect_standard_onboarding.environment', before: :load_config_initializers do |_app|
      SpreeStripeConnectStandardOnboarding::Config = SpreeStripeConnectStandardOnboarding::Configuration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
