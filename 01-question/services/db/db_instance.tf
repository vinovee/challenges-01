resource "aws_db_instance" "rds_mysql" {
  name                   = "${var.env}-${var.region}-rds-${var.engine}-${count.index + 1}"
  allocated_storage      = var.allocated_storage
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  username               = var.username
  password               = var.password
  multi_az               = var.multi_az
  port                   = var.port§
  db_subnet_group_name   = var.out_rdssubnetgroup
  vpc_security_group_ids = [var.rdsmysqlsg]
  tags = {
    name = "RDS ${var.engine}-${count.index + 1}"
    AutomatedBy = "Terraform"
  }
}
