
resource "aws_db_instance" "mysql" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "${var.dbname}"
  username             = "${var.username}"
  password             = "${var.password}"
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = ["${aws_security_group.mysql.id}"]
  db_subnet_group_name = "${aws_db_subnet_group.mysql.name}"
  skip_final_snapshot = true
}
