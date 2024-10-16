variable "deployment_regions" {
  description = "Set of regions to create alert policies for."
  type        = set(string)
  default     = ["eu-north-1", "ap-south-1", "me-south-1"]
}

variable "network_zones" {
  description = "List of network zone types."
  type        = list(string)
  default     = ["public", "private", "protected"]
}

variable "operating_systems" {
  description = "Set of supported operating systems."
  type        = set(string)
  default     = ["linux", "windows", "macos"]
}
