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
  ami           = "ami-049442a6cf8319180" # Replace with your desired AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-08604f9dfa8ef0372"

  tags = {
    Name = "create-via-githubAction"
  }
}
