#Variables
 /*resource "local_file" "My_Pet" {
  filename = "${path.module}/My-pet-name.txt"
  content  = "My pets name is not kiesha"
}

resource "random_pet" "My_Pet" {
    prefix = "Mr"
    separator = "."
    length = 1
}*/

resource "local_file" "My_pet"{
  filename = "${path.module}/var.filename"
  content = var.content
}

resource "random_pet" "My_pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}

resource "local_file" "server_role_file" {
  filename = "${path.module}/server-role-${var.server_roles[0]}.txt"
  content  = "The first server role is ${var.server_roles[0]}"
}
resource "local_file" "server_region_file" {
  filename = "${path.module}/server-region.txt"
  content  = "The server region is ${tolist(var.server_regions)[2]}"
}
