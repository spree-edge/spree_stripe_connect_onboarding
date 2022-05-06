Deface::Override.new(
  virtual_path:  "spree/admin/vendors/edit",
  name:          "add_stripe_account_info_for_admin",
  insert_after: "fieldset",
  text: "<%= render partial: 'spree/admin/shared/stripe_onboarding', locals: {url: account_information_admin_vendor_url(@vendor)} %>"
)