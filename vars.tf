variable "aws_region" {
  description = "required region for resources"
  default     = "us-east-1"
}
variable "vpc_name" {
  description = "name of your vpc."
  type        = string
  default     = "Assignment02-vpc"
}
variable "vpc_cidr_block" {
  description = "main CIDR for your vpc"
  default     = "10.0.0.0/16"
}
variable "public_subnet_cidr_1" {
  description = "cidr block for public subnet masking."
  type        = string
  default     = "10.0.101.0/24"
}
variable "availability_zone_1" {
  description = "name of availaibility zone"
  type        = string
  default     = "us-east-1a"
}
variable "instance_tenancy_mode" {
  description = "instance tenancy default or dedicate"
  type        = string
  default     = "default"
}
variable "env" {
  description = "environment name"
  type        = string
  default     = "assignment2"
}
variable "project_name" {
  type        = string
  description = "name of the project for tags"
  default     = "assignment-02"
}
variable "Environment" {
  type        = string
  description = "environment of the project for tags"
  default     = "Dev"
}
variable "aws_security_group" {
  type = map(object({
    description = string
    port        = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = {
    "80" = {
      description = "for http"
      port        = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    "443" = {
      description = "for https"
      port        = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    "22" = {
      description = "for 22"
      port        = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
variable "ami_id" {
  description = "ami id of ec2 instance ubuntu"
  default     = "ami-053b0d53c279acc90"
}
variable "instance_type" {
  description = "instance size type "
  default     = "t2.micro"
}
variable "instance_name" {
  description = "name of instance"
  default     = "assignment02"
}
variable "s3_bucket_name" {
  description = "name of instance"
  type        = string
  default     = "assignment04-test-bucket-sohail"
}
