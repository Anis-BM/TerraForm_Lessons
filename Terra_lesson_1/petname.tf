 resource "local_file" "My_Pet" {
  filename = "${path.module}/My-pet-name.txt"
  content  = "My pets name is not kiesha"
}

# The following example shows how to generate a unique pet name
# for an AWS EC2 instance that changes each time a new AMI id is
# selected.

resource "random_pet" "My_Pet" {
    prefix = "Mr"
    separator = "."
    length = 1
}
