data "azurerm_virtual_network" "jenkins" {
  name                = var.jenkins_vnet_name
  resource_group_name = var.jenkins_rg_name
}

data "azurerm_resource_group" "jenkins_rg" {
  name = var.jenkins_rg_name
}

data "azurerm_virtual_network" "development" {
  name                = var.development_vnet_name
  resource_group_name = var.development_rg_name
}

data "azurerm_resource_group" "development_rg" {
  name = var.development_rg_name
}

resource "azurerm_virtual_network_peering" "private_to_jenkins" {
  name                      = var.peer_name_between_dev_vnet_to_jenkins_vnet
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.vnet_name
  remote_virtual_network_id = data.azurerm_virtual_network.jenkins.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = false
  use_remote_gateways       = false
}

resource "azurerm_virtual_network_peering" "private_to_development" {
  name                      = var.peer_name_between_dev_vnet_to_amdp_vnet
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.vnet_name
  remote_virtual_network_id = data.azurerm_virtual_network.development.id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = false 
  use_remote_gateways       = false
}

resource "azurerm_virtual_network_peering" "jenkins_to_private" {
  name                      = var.peer_name_between_jenkins_vnet_to_dev_vnet
  resource_group_name       = data.azurerm_resource_group.jenkins_rg.name
  virtual_network_name      = data.azurerm_virtual_network.jenkins.name
  remote_virtual_network_id = var.vnet_id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = false
  use_remote_gateways       = false
}

resource "azurerm_virtual_network_peering" "development_to_private" {
  name                      = var.peer_name_between_amdp_vnet_to_dev_vnet
  resource_group_name       = data.azurerm_resource_group.development_rg.name
  virtual_network_name      = data.azurerm_virtual_network.development.name
  remote_virtual_network_id = var.vnet_id
  allow_forwarded_traffic   = true
  allow_gateway_transit     = false
  use_remote_gateways       = false
}
