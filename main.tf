terraform {
 backend "s3" {
  bucket = "pavan-terraform-remote-state"
  region = "eu-west-2"
  encrypt = true
  key = "terraform.tfstate"
 }
}
