resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = merge(
    local.common_tags,
    { Name = "${var.env}-vpc"}
  )
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_block

  tags = merge(
    local.common_tags,
    { Name = "${var.env}-subnet"}
  )
}