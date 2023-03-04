data "aws_caller_identity" "current" {}

data "aws_vpc" "default" {
  id = var.default_vpc_id
}