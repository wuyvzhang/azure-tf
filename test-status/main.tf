terraform {
    backend "azurerm" {
        storage_account_name = "cnterraformstorage"
        container_name = "terraform-status"
        key = "cn.terraform.stats"
    }
}

provider "azurerm" {
    version = "~> 2.0"
    features {}
}

resource "azurerm_resource_group" "example" {
    name = "web_test_tf_RG"
    location = "East Asia"
}