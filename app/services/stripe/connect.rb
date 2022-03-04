class Stripe::Connect
  STRIPE_DASHBOARD_URL = 'https://dashboard.stripe.com'.freeze

  def self.get_account_url(vendor_id, redirect_uri)
    vendor = Spree::Vendor.find_by(id: vendor_id)
    vendor.stripe_connect_id.present? ? manage_account(vendor, redirect_uri) : create_account(vendor, redirect_uri)
  end

  def self.manage_account(vendor, redirect_uri)
    account_link_info = {}

    begin
      account = Stripe::Account.retrieve(vendor.stripe_connect_id)

      # Account links based on onboarding status
      if account['details_submitted']
        account_link_info['url'] = STRIPE_DASHBOARD_URL
      else
        account_links = Stripe::AccountLink.create({ account: vendor.stripe_connect_id, refresh_url: redirect_uri,
                                                     return_url: redirect_uri, type: 'account_onboarding' })
        account_link_info['url'] = account_links['url']
      end
    rescue StandardError => e
      account_link_info['error'] = Spree.t(:something_went_wrong)
    end

    account_link_info
  end

  # Create new connect account
  def self.create_account(vendor, redirect_uri)
    account_link_info = {}

    begin
      account = Stripe::Account.create({ type: 'standard' })
      account_links = Stripe::AccountLink.create({ account: account['id'], refresh_url: redirect_uri,
                                                   return_url: redirect_uri, type: 'account_onboarding' })
      vendor.update_column(:stripe_connect_id, account['id'])
      account_link_info['url'] = account_links['url']
    rescue StandardError => e
      account_link_info['error'] = Spree.t(:something_went_wrong)
    end

    account_link_info
  end
end
