output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_peering_connection_id" {
  value = aws_vpc_peering_connection.peer.id
}


output "public_subnet_id" {
  value = lookup(lookup(module.public_subnets, "public", null), "subnet_ids", null)[0]
}