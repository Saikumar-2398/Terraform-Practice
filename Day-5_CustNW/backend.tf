terraform {
  backend "s3" {
    bucket = "terraformtest-110825"
    key    = "day-5"
    region = "ap-south-1"
    use_lockfile = true  
    encrypt = true
  }
}