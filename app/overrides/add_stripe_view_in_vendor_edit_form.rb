# frozen_string_literal: true

Deface::Override.new(
  virtual_path:  "spree/admin/vendors/_form",
  name:          "add_stripe_table_in_form",
  insert_after: "[class='form-group']",
  partial: "spree/admin/shared/stripe_details"
)
