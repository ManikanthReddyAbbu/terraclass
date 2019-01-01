resource "aws_key_pair" "keypair1" {

    key_name = "pavan"
    public_key = "${file("pavan.pub")}"
}
