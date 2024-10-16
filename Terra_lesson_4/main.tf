#Explict Dependancy will use a depends clause that will make 1 resource depend on another
/*resource "local_file" "whale" {
  filename   = "${path.module}/whale.txt"
  content	= "whale"
  depends_on = [local_file.krill]
}
resource "local_file" "krill" {
  filename = "${path.module}/krill.txt"
  content  = "krill"
}*/

/*
Commands to see graph of terraform chart mac and windows
choco install graphviz or brew install graphviz
terraform graph > graph.dot
cp graph.dot graph_unix.dot
dot -Tsvg graph_unix.dot > graph.svg
*/

#Generates Random pet name and uses output to put the name in the terminal

resource "random_pet" "name" {}
resource "local_file" "random_name_file" {
  filename = "${path.module}/random-name.txt"
  content  = "Name: ${random_pet.name.id}"
}
output "random_file_content" {
  value = local_file.random_name_file.content
}





resource "local_file" "server_info" {
  filename = "${path.module}/server-details.txt"
  content  = <<-EOT
  Hostname: ${var.server_config.hostname}
  IP Address: ${var.server_config.ip_address}
  Role: ${var.server_config.role}
  EOT
}
output "hostname" {
  value = var.server_config.hostname
}
output "ip_address" {
  value = var.server_config.ip_address
}
output "role" {
  value = var.server_config.role
}
