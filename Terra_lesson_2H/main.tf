resource "local_file" "alert_policy" {
  for_each = var.deployment_regions
  filename = "${path.module}/alert-${each.key}.policy"
  content  = "Alert policy for the ${each.key} region. Review and customize thresholds as needed."
}

resource "local_file" "network_zone_file" {
  filename = "${path.module}/zone-type-${var.network_zones[1]}.txt"
  content  = "Network zone type: ${var.network_zones[1]}"
}

resource "local_file" "operating_system_file" {
  filename = "${path.module}/os-info.txt"
  content  = "Operating system in use: ${tolist(var.operating_systems)[1]}"
}
