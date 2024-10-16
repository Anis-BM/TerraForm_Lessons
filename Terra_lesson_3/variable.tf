#map string variable
variable "app_settings" {
  description = "Configuration settings for the application."
  type        = map(string)
  default     = {
	"environment" = "production"
	"debug_mode"  = "false"
	"version" 	= "1.0.0"
  }
}

#map string varible with iteration
variable "feature_flags" {
  description = "Feature flags for toggling application features."
  type    	= map(string)
  default 	= {
	"signup_enabled"           	= "true"
	"profile_editing_enabled"  	= "false"
	"search_functionality_enabled" = "true"
	"beta_features_enabled"    	= "false"
  }
}

#Object Variable

variable "server_config" {
  description = "Configuration settings for a server."
  type = object({
	hostname      	= string
	ip_address    	= string
	operating_system  = string
	is_active     	= bool
	installed_services = list(string)
  })
  default = {
	hostname      	= "Morocco01"
	ip_address    	= "192.168.1.11"
	operating_system  = "Ubuntu"
	is_active     	= true
	installed_services = ["nginx", "mysql", "Aurora"]
  }
 }

#Tuples Variables
variable "user_roles" {
  description = "List of user roles in the system"
  type        = list(string)
  default     = ["admin", "editor", "viewer"]
}
 
variable "feature_toggles" {
  description = "Feature toggles for enabling or disabling features"
  type        = map(string)
  default     = {
	"signup_enabled"           	= "true",
	"profile_editing_enabled"  	= "false",
	"search_functionality_enabled" = "true"
  }
}
