provider "aws" {
  region     = "us-east-1"
  profile    = "aws-iamuser"
}
resource "aws_instance" "example" {
  ami           = "ami-0fe472d8a85bc7b0e"
  instance_type = "t2.micro"

  lifecycle {
    ignore_changes = [ami]
  }

}

