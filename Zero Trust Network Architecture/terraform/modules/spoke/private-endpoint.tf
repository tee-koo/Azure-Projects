resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_mssql_server" "sql" {
  name                         = "sql-${var.spoke_name}-${random_string.suffix.result}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "P@ssw0rd12345678!"
  public_network_access_enabled = false
}

resource "azurerm_private_endpoint" "sql" {
  name                = "pe-sql-${var.spoke_name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = azurerm_subnet.private_endpoints.id

  private_service_connection {
    name                           = "sqlconn"
    private_connection_resource_id = azurerm_mssql_server.sql.id
    subresource_names              = ["sqlServer"]
    is_manual_connection           = false
  }
}
