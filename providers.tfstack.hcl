# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "3.112.0 "
    #version = "~> 4.12.0"
  }

  tls = {
    source  = "hashicorp/tls"
    version = "~> 4.0.5"
  }
}


variable "client_id" {
  type      = string
  ephemeral = "true"
}
variable "client_secret" {
  type      = string
  ephemeral = "true"
  sensitive = true
}

variable "subscription_id" {
  type      = string
  ephemeral = "true"
}
variable "tenant_id" {
  type      = string
  ephemeral = "true"
}
variable "region" {
  type = string
}


provider "azurerm" "this" {
  config {
    features {}
    // use_cli should be set to false to yield more accurate error messages on auth failure.
    use_cli = false
    // use_oidc must be explicitly set to true when using multiple configurations.
    use_oidc        = false
    client_id       = var.client_id
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
    client_secret   = var.client_secret
  }
}

provider "tls" "this" {}
