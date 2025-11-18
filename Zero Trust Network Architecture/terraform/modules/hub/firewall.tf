resource "azurerm_public_ip" "fw_pip" {
  name                = "pip-fw-central"
  location            = var.location
  resource_group_name = azurerm_resource_group.core.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_firewall" "central" {
  name                = "fw-central"
  location            = var.location
  resource_group_name = azurerm_resource_group.core.name
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"

  ip_configuration {
    name                 = "ipconfig"
    subnet_id            = azurerm_subnet.firewall.id
    public_ip_address_id = azurerm_public_ip.fw_pip.id
  }
}
