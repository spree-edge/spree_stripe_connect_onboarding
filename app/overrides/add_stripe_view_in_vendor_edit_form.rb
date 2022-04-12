# frozen_string_literal: true

Deface::Override.new(
  virtual_path:  "spree/admin/vendors/edit",
  name:          "add_stripe_table_in_form",
  insert_after: "fieldset",
  partial: "spree/admin/shared/stripe_details"
)
