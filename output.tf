output "ami_id" {
value="${data.aws_ami.ubuntu.id}"
}

output "aws_instace" {
value = "ssh -i ${aws_key_pair.keypair1.key_name} ubuntu@${aws_instance.ec2.public_ip}"
}

output "azs" {

value = "${data.aws_availability_zones.azs.*.names}"

}
output "db" {

value = "mysql -h ${aws_db_instance.mysql.address} -P ${aws_db_instance.mysql.port} -u ${var.username} -p"
}
