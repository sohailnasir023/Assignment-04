resource "aws_instance" "test_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.vpc_sg.id]
  subnet_id                   = element(module.vpc.public_subnets, 0)
  key_name                    = "sohail"
  associate_public_ip_address = true

  tags = {
    Name        = var.instance_name
    Environment = var.Environment
    project     = var.project_name
  }
}
