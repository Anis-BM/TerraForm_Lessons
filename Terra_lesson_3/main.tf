#Static map

resource "local_file" "app_config" {
  filename = "${path.module}/app-config.txt"
  content  = "Environment setting: ${var.app_settings["environment"]}"
}

resource "local_file" "app_config_files" {
  for_each = var.app_settings
  filename = "${path.module}/${each.key}-config.txt"
  content  = "${each.key}: ${each.value}"
}

resource "local_file" "feature_flag_files" {
  for_each = var.feature_flags
  filename = "${path.module}/feature-${each.key}-status.txt"
  content  = "Feature ${each.key} is enabled: ${each.value}"
}

resource "local_file" "server_info" {
  filename = "${path.module}/server-config-summary.txt"
  content  = <<-EOT
  Hostname: ${var.server_config.hostname}
  IP Address: ${var.server_config.ip_address}
  Operating System: ${var.server_config.operating_system}
  Active: ${var.server_config.is_active ? "Yes" : "No"}
  Installed Services: ${join(", ", var.server_config.installed_services)}
  EOT
}

#Output allows to return values from a resource here in the terminal
output "hostname" {
  value = var.server_config.hostname
}
output "ip_address" {
  value = var.server_config.ip_address
}
output "operating_system" {
  value = var.server_config.operating_system
}
output "is_active" {
  value = var.server_config.is_active
}
output "installed_services" {
 value = var.server_config.installed_services
}

resource "local_file" "user_role_files" {
  count    = length(var.user_roles)
  filename = "${path.module}/user-role-${var.user_roles[count.index]}.txt"
  content  = "Role: ${var.user_roles[count.index]}"
}
 
resource "local_file" "feature_toggle_files" {
  for_each = var.feature_toggles
  filename = "${path.module}/feature-${each.key}.txt"
  content  = "${each.key} Enabled: ${each.value}"
}
