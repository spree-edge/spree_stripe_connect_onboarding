Deface::Override.new(
  virtual_path:  "spree/admin/vendor_settings/edit",
  name:          "add_stripe_onboarding",
  insert_after: "erb[silent]:contains('content_for :page_title do')",
  text: "<%= render partial: 'spree/admin/shared/stripe_onboarding', locals: {url: account_information_admin_vendor_setting_url(@vendor)} %>"
)