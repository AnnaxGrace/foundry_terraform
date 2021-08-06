variable "aws_region" {
  description = "Enter a region id to deploy infrastruction into"
  # default     = "us-east-1"
  default = "us-west-2"
}

variable "aws_profile" {
  description = "Enter a profile name to deploy infrastructure into"
  # default     = "next-gen"
  default = "anna-account"
}

variable "tag_name" {
  description = "Enter a tag name for identification across the project"
  default     = "foundry"
}

variable "vpc_cidr" {
  description = "Enter CIDR for VPC"
  default     = "10.0.0.0/16"
}