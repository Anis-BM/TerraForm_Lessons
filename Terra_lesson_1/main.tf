 resource "local_file" "games" {
  filename = "${path.module}/favorite-games.txt"
  content  = "DragonBall Sparking Zero"
}
