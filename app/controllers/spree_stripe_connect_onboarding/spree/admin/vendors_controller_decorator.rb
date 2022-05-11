module SpreeStripeConnectOnboarding
  module Spree
    module Admin
      module VendorsControllerDecorator

        def self.prepended(base)
          base.before_action :retrieve_stripe_account_info, only: [:edit, :new, :account_information]
        end

        def stripe_connect_url
          account_url = Stripe::Connect.get_account_url(@vendor.id, redirect_path)
          redirect_callback_uri = account_url['url'].present? ? account_url['url'] : redirect_path
          flash[:error] = account_url['error'] if account_url['error'].present?
          redirect_to redirect_callback_uri
        end

        def account_information
        end

        private

        def retrieve_stripe_account_info
          @account_info = {}
          @account_info = Stripe::Account.retrieve(@vendor.stripe_connect_id) if @vendor.stripe_connect_id
        end

        def redirect_path
          if current_spree_vendor
            admin_vendor_settings_url
          else
            edit_admin_vendor_url(@vendor)
          end
        end

      end
    end
  end
end

::Spree::Admin::VendorsController.prepend ::SpreeStripeConnectOnboarding::Spree::Admin::VendorsControllerDecorator
