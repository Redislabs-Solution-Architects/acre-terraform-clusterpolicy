resource "azurerm_private_endpoint" "redisgeek" {
  name                = format("redisgeek-%s", random_string.private_link_name.result)
  location            = azurerm_resource_group.redisgeek.location
  resource_group_name = azurerm_resource_group.redisgeek.name
  subnet_id           = azurerm_subnet.redisgeek.id
  tags                = merge(var.tags, { owner = data.azuread_service_principal.redisgeek.display_name })

  private_service_connection {
    name                           = format("redisgeek-sc-%s", random_string.private_link_name.result)
    private_connection_resource_id = azurerm_redis_enterprise_cluster.redisgeek.id
    is_manual_connection           = false
    subresource_names              = ["redisEnterprise"]
  }
}
