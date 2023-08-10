module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name               = "vpc/${var.env}"
  cidr               = "10.0.0.0/16"
  azs                = [var.availability_zone_1]
  public_subnets     = [var.public_subnet_cidr_1]
  enable_nat_gateway = false
  enable_vpn_gateway = false
  instance_tenancy   = var.instance_tenancy_mode

  tags = {
    Environment = var.Environment
    project     = var.project_name
  }
}
