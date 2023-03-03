locals {
  common_tags = {
    env = var.env
    project = "roboshop"
    business_unit = "ecommerce"
    owner = "ecommerce-robot"
  }
}