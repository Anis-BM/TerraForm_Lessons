variable "server_config" {
  description = "Configuration settings for a server."
  type = object({
	hostname  	= string
	ip_address	= string
	role      	= string
  })
  default = {
	hostname	= "server01"
	ip_address  = "192.168.1.100"
	role    	= "web"
  }
}
