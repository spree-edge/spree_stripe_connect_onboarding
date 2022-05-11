module SpreeStripeConnectOnboarding
  module Spree
    module VendorDecorator
      def self.prepended(base)
        base.enum stripe_account_type: { standard: '0', express: '1'}
      end
    end
  end
end

::Spree::Vendor.prepend SpreeStripeConnectOnboarding::Spree::VendorDecorator if ::Spree::Vendor.included_modules.exclude?(SpreeStripeConnectOnboarding::Spree::VendorDecorator)
