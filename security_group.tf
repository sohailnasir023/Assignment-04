resource "aws_security_group" "vpc_sg" {
  name_prefix = "security_group/${var.env}"
  vpc_id      = module.vpc.vpc_id
  # Add your security group rules here
  dynamic "ingress" {
    for_each = var.aws_security_group
    content {
      description = ingress.value.description
      to_port     = ingress.value.port
      from_port   = ingress.value.port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Environment = var.Environment
    project     = var.project_name
  }
}
