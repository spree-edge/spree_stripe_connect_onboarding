require 'spec_helper'

RSpec.describe Spree::Vendor, :type => :model do

  describe "Enums" do
    it do
      should define_enum_for(:stripe_account_type).
        with(standard: "0", express: "1").
        backed_by_column_of_type(:string)
    end
  end
end
