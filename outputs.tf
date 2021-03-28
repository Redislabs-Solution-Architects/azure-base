locals {
  redisgeek_config = {
    sp = data.azuread_service_principal.redisgeek.display_name
  }
}

output "sp" {
  value     = jsonencode(local.redisgeek_config)
  sensitive = false
}
