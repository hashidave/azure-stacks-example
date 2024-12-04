# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

locals {
  location = replace(var.resource_group_location, " ", "")
}
resource "azurerm_resource_group" "example" {
  name     = "${var.resource_group_name}-${local.location}"
  location = var.resource_group_location
}
