class AddStripeAccountTypeToVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_vendors, :stripe_account_type, :string
  end
end
