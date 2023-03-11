resource "aws_subnet" "main" {
  count             = length(var.cidr_block)
  cidr_block        = var.cidr_block[count.index]
  availability_zone = var.availability_zone[count.index]
  vpc_id            = var.vpc_id

  tags = merge(
    local.common_tags,
    { Name = "${var.env}-${var.name}-subnet-${count.index+1}" }
  )
}

resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block                = data.aws_vpc.default.cidr_block
    vpc_peering_connection_id = var.vpc_peering_connection_id
  }

  tags = merge(
    local.common_tags,
    { Name = "${var.env}-${var.name}-route_table" }
  )
}

resource "aws_route_table_association" "association" {
  count               = length(aws_subnet.main)
  subnet_id           = aws_subnet.main.*.id[count.index]
  route_table_id      = aws_route_table.route_table.id
}