terraform {
  backend "s3" {
    bucket = "rayank-aws-bucket"
    key    = "github-action/terraform.tfstate"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "create-via-githubAction"
  }
}
