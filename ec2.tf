provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ec2"
{
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  tags {
   Name="EC2 Instance"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


output "ami_id" {
value="${data.aws_ami.ubuntu.id}"
}
output "aws_instace" {
value = "${aws_instance.ec2.public_ip}"
}
