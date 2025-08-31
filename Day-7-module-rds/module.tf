module "rds" {
  source = "./rds"

  allocated_storage      = 20
  db_name                = "mydb"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  username               = "admin"
  password               = "MySecurePass123"
  parameter_group_name   = "default.mysql8.0"
  vpc_security_group_ids = ["sg-04ac10273a3f05a24"]
  db_subnet_group_name   = aws_db_subnet_group.mydb_subnet_group.name
  tags = {
    Environment = "dev"
  }
}
resource "aws_db_subnet_group" "mydb_subnet_group" {
  name       = "mydb-subnet-group"
  subnet_ids = ["subnet-07158cd7de1ed54ef","subnet-0aeb695f1606c3d11"]
  tags = {
    Name = "My DB subnet group"
  }
}
