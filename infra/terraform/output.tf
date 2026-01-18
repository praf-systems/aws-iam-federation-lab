output "region" {
  value = data.aws_region.current.name
}

output "vpc_id" {
  value = data.aws_vpc.sandbox_vpc.id
}

output "vpc_cidr" {
  value = data.aws_vpc.sandbox_vpc.cidr_block
}

output "subnet_ids" {
  value = data.aws_subnets.all_in_vpc.ids
}

output "igw_id" {
  value = try(data.aws_internet_gateway.igw.id, null)
}