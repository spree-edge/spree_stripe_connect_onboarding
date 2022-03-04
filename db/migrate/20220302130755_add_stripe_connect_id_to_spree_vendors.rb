class AddStripeConnectIdToSpreeVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_vendors, :stripe_connect_id, :string
  end
end
