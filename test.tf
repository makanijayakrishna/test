terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = "~>= 1.1.0"
}

provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "Terraformtest1" {
  ami           = "ami-0667149a69bc2c367"
  instance_type = "t2.micro"
  key_name      = "AWSkrishna"

  tags = {
    Name = "sampletest" 

    
  }
}
resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1b"
  size              = "8"
  type              = "gp2"

  tags = {
    Name = "usuage"
  }
}
