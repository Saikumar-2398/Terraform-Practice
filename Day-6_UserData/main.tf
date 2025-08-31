provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1"
    user_data = file("test.sh")
    tags = {
        Name = "User"
    }

}