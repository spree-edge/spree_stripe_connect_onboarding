Deface::Override.new(
  virtual_path:  "spree/admin/vendor_settings/edit",
  name:          "add_stripe_view_for_vendor",
  insert_after: "fieldset",
  partial: "spree/admin/shared/stripe_details"
)