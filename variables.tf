
# variable "key_name" {
#   description = "Key pair name for SSH access"
#   type        = string
# }
variable "availability_zone_Local" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "ap-south-1a"
}    