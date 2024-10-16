 resource "local_file" "Playstation" {
  filename = "${path.module}/favorite-console.txt"
  content  = "Glad to have Playstation 5"
}