#Variables


variable "filename" {
  description = "The filename for the pet name file"
  type        = string
  default     = "My-pet-name.txt"
}
variable "content" {
  description = "The content to put in the pet name file"
  type        = string
  default     = "My pet is not called Keisha!"
}
 variable "prefix" {
  description = "The prefix for the random pet name"
  type        = string
  default     = "Mr"
}
variable "separator" {
  description = "The separator for the random pet name"
  type        = string
  default     = "."
}
variable "length" {
  description = "The length of the random pet name"
  type        = number
  default     = 1
}

variable "server_roles" {
    description = "list of Server Roles"
    type =list(string)
    default = ["web", "applaication", "database", "Server"]
}

variable "server_regions" {
    description = "List of regions where server is located"
    type = list(string)
    default =["us-east-1", "eu-west-1", "us-west-1"]

}