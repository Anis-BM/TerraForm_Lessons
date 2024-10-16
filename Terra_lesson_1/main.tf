 resource "local_file" "games" {
  filename = "${path.module}/favorite-games.txt"
  content  = "DragonBall Sparking Zero"
}

#The local file resource is used for terraform locally instead of AWS etc.