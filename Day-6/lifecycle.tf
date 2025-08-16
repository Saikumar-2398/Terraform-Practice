resource "aws_instance" "name1" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.micro"
    tags = {
      Name = "test_ec2"
    }

    lifecycle {
      prevent_destroy = true
      #create_before_destroy = true
      ignore_changes = [ tags,]

    }
    
  
}
