locals {
  redisgeek_config = {
    sp = data.azuread_service_principal.redisgeek.display_name
  }
}

output "redisgeek_config" {
  value     = jsonencode(local.redisgeek_config)
  sensitive = false
}
