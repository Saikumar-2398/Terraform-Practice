resource "aws_instance" "name" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.micro"
    tags = {
      Name = "test_ec2"
    }
    depends_on = [ aws_s3_bucket.name ]  # explicity --> after create s3 only vpc create like depdnecy block usage 
}

  resource "aws_s3_bucket" "name1" {
  bucket = "jxsaahhsajsaj"
 }