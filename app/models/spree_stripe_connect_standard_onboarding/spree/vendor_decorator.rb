module SpreeStripeConnectStandardOnboarding
  module Spree
    module VendorDecorator
      def self.prepended(base)
        base.enum stripe_account_type: { standard: '0', express: '1'}
      end
    end
  end
end

::Spree::Vendor.prepend SpreeStripeConnectStandardOnboarding::Spree::VendorDecorator if ::Spree::Vendor.included_modules.exclude?(SpreeStripeConnectStandardOnboarding::Spree::VendorDecorator)
