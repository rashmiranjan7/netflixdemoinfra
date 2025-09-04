provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count                  = 4
  ami                    = "ami-0861f4e788f5069dd"
  instance_type          = "t2.medium"
  key_name               = "Rashmi07"
  vpc_security_group_ids = ["sg-09aa8beb1fbeb5af2"]
  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
