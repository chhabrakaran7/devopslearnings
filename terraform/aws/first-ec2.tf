## This is a terraform file to setup an Amazon EC2 instance using terraform
## Created by Karan Chhabra 12/11/2021

# Terraform-AWS Authentication #
provider "aws" {
  region = "eu-west-1"
  access_key = "AKIA23DKPEC6CNC63OAG"
  secret_key = "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"
}

# Choose resource type #
resource "aws_instance" "my_ec2_tf" {
  ami           = "ami-09d4a659cdd8677be" #Image ID
  instance_type = "t2.micro"              #Flavor type

  tags = {
    Name = "HelloWorld"
  }
}