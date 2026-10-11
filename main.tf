resource "oci_license_manager_configuration" "license_manager_configurations" {
  for_each = var.license_manager_configurations

  compartment_id = each.value.compartment_id
  email_ids      = each.value.email_ids

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

