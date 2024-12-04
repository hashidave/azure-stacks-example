# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "tokens" {
  id       = "varset-gZ8inWU6iKS3NzAr"
  category = "terraform"
}

deployment "production" {
  inputs = {
    client_id       = store.varset.tokens.client_id
    client_secret   = store.varset.tokens.clid
    tenant_id       = store.varset.tokens.tenant_id
    subscription_id = store.varset.tokens.subscription_id
    region          = "US East"
  }
}
