locals {
  redisgeek_config = {
    cluster             = azurerm_redis_enterprise_cluster.redisgeek.*
    database            = azurerm_redis_enterprise_database.redisgeek.*
    resource_group_name = azurerm_resource_group.redisgeek.name
  }
}

output "redisgeek_config" {
  value     = jsonencode(local.redisgeek_config)
  sensitive = false
}
