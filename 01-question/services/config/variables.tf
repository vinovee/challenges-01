variable "ami" {
  default     = "ami-0949d9e7788552c55"
  description = "EBS backed Amazon Linux, creation date July 22nd 2021"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instance_type_internal" {
  default = "t2.medium"
}
variable "output_web_sg" {}
variable "external_alb_sg" {}
variable "output_bastion_ssh" {}
variable "output_internal_alb_sg" {}
