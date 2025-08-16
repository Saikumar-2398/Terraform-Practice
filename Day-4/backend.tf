terraform {
  backend "s3" {
    bucket = "terraformtest-110825"
    key    = "day-4"
    region = "ap-south-1"
    use_lockfile = true #s3 supports this feature but teraaform version > 1.10, latest version >=1.10
    #dynamodb_table = "nareshit"  #any version 
    encrypt = true
  }
}