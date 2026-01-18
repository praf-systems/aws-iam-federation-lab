# Read-only introspection of manually created networking resources

data "aws_region" "current" {}

# Option 1: Find VPC by Name tag (recommended)
data "aws_vpc" "sandbox_vpc" {
  filter {
    name   = "tag:Name"
    values = ["praf-sandbox-vpc"]
  }
}

data "aws_subnets" "all_in_vpc" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.sandbox_vpc.id]
  }
}

# Optional: find Internet Gateway attached to VPC
data "aws_internet_gateway" "igw" {
  filter {
    name   = "attachment.vpc-id"
    values = [data.aws_vpc.sandbox_vpc.id]
  }
}