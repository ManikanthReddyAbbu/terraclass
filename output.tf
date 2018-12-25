output "ami_id" {
value="${data.aws_ami.ubuntu.id}"
}

/* output "aws_instace" {
value = "${aws_instance.ec2.public_ip}"
}*/

output "azs" {

value = "${data.aws_availability_zones.azs.*.names}"

}
