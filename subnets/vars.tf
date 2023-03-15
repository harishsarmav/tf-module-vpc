variable "cidr_block" {}
variable "availability_zone" {}
variable "vpc_id" {}
variable "env" {}
variable "default_vpc_id" {}
variable "name" {}
variable "vpc_peering_connection_id" {}
variable "tags" {}
variable "internet_gw" {}
variable "gateway_id" {
  default = null
}
variable "nat_gw_id" {
  default = null
}

variable "nat_gw" {}