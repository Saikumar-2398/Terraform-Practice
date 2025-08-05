variable "ami-id" {
    description = "inerting the ami values to main.tf"
    type = string
    default = "ami-0d0ad8bb301edb745"
  
}
variable "instance-type" {
    type = string
    default = "t2.micro"
  
}