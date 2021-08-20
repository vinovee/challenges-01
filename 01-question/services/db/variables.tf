variable "allocated_storage" {
  default = "30"
}
variable "storage_type" {
  default = "gp2"
}
variable "engine" {
  default = "mysql"
}
variable "engine_version" {
  default = "8.0.25"
}
variable "instance_class" {
  default = "db.t3.medium"
}
variable "username" {
  default = "admin"
}
variable "password" {
  default = "mysqladmin123"
}
variable "multi_az" {
  default = "true"
}
variable "port" {
  default = [
    "mysql" = 3306,
    "postgresql" = 5432,
    "oracle" = 1521
  ]
}
variable "private_subnet3" {}
variable "private_subnet4" {}
variable "out_rdssubnetgroup" {}
variable "rdsmysqlsg" {}
