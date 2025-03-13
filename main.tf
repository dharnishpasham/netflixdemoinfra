provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-08fe5144e4659a3b3"
instance_type = "t2.medium"
key_name = "jenkins123"
vpc_security_group_ids = ["sg-065628eded33deb06"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
