provider "aws" {
  region     = "${var.aws_reg}"
}

resource "aws_instance" "ec2"
{
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
#  depends_on = ["${aws_db_instance.mysql}"]
  key_name = "${aws_key_pair.keypair1.key_name}"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  subnet_id = "${aws_subnet.public1.id}"
  associate_public_ip_address = true
/*  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y;
              sudo apt-get install mysql-client -y;
              EOF
*/
  user_data = "${file("userdata.sh")}" 
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



