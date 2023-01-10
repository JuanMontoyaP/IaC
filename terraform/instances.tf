resource "aws_instance" "IaC" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.IaC-sg.id]
  monitoring             = true

  tags = {
    "Name" : "IaC"
  }
}