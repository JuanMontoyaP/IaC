# instance variables values
ami_id        = "ami-0d4360d9166cfc9cb"
instance_type = "t2.micro"
key_name      = "us-west-key"

# security group variable values
sg_ingress_rules = [
  {
    description = "Access to port 22 from the exterior",
    from_port   = 22,
    to_port     = 22,
    protocol    = "tcp",
    cidr_blocks = ["201.233.87.29/32"]
  },
  {
    description = "Access to port 80 from the exterior",
    from_port   = 80,
    to_port     = 80,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"],
  },
  {
    description = "Access to port 9200 from the exterior",
    from_port   = 9200,
    to_port     = 9200,
    protocol    = "tcp",
    cidr_blocks = ["0.0.0.0/0"],
  }
]

sg_egress_rules = [
  {
    description = "Access to internet",
    from_port   = 0,
    to_port     = 0,
    protocol    = -1,
    cidr_blocks = ["0.0.0.0/0"]
  }
]