module Spree
  module Admin
    module VendorSettingsControllerDecorator
      def self.prepended(base)
        base.before_action :retrieve_stripe_account_info, only: [:edit, :account_information]
      end

      def onboarding
      end

      def account_information
      end

      def generate_stripe_account
        if @vendor.update(vendor_params.except(:image))
          redirect_to  stripe_connect_url_admin_vendor_path(@vendor)
        end
      end

      private

      def retrieve_stripe_account_info
        @account_info = {}
        @account_info = Stripe::Account.retrieve(@vendor.stripe_connect_id) if @vendor.stripe_connect_id
      end
    end
  end
end

Spree::Admin::VendorSettingsController.prepend Spree::Admin::VendorSettingsControllerDecorator
