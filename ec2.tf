provider "aws" {
  region     = "${var.aws_reg}"
}

/*resource "aws_instance" "ec2"
{
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  tags {
   Name="EC2 Instance"
  }
}
*/

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



