terraform {
  backend "s3" {
    bucket = "terraformtest-110825"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}