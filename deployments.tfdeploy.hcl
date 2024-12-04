# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "tokens" {
  id       = "varset-gZ8inWU6iKS3NzAr"
  category = "terraform"
}

deployment "production" {
  inputs = {
    region = "US West"
  }
}

deployment "dev" {
  inputs = {
    region = "US East"
  }
}
