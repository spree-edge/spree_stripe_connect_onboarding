module Spree
  module PermittedAttributesDecorator
    def self.prepended(base)
      @@vendor_attributes << [:stripe_account_type]
    end
  end
end
::Spree::PermittedAttributes.include(::Spree::PermittedAttributesDecorator)
