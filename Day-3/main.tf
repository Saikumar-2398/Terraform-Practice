provider "aws" {
  
}

resource "aws_instance" "dev" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.micro"
    tags = {
      Name = "devtest"
    }

  
}