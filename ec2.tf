provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket  = "terraform-stovl"
    key     = "terraform/my-terraform-state.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}

resource "aws_instance" "my_first_ec2" {
  ami           = "ami-02e94b011299ef128"
  instance_type = "t2.large"
}
