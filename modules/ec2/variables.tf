
variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

# # variable "key_name" {
# #   description = "Key pair name for SSH access"
# #   type        = string
# }

variable "tags" {
  description = "Tags for the instance"
  type        = map(string)
  default     = {}
}
                