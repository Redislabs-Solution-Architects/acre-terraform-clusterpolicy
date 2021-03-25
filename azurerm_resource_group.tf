resource "azurerm_resource_group" "redisgeek" {
  name     = format("%s-%s", data.azuread_service_principal.redisgeek.display_name, random_string.resource_group_name.result)
  location = random_shuffle.redisgeek.result[0]
  tags     = merge(var.tags, { owner = data.azuread_service_principal.redisgeek.display_name })
}
