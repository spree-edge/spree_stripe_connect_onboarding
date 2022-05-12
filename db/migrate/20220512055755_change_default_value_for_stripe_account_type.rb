class ChangeDefaultValueForStripeAccountType < ActiveRecord::Migration[6.1]
  def change
    change_column :spree_vendors, :stripe_account_type, :string, default: 0
  end
end
