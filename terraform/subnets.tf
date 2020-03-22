resource "aws_subnet" "subnet-uno" {
  cidr_block = cidrsubnet(aws_vpc.kiez-env.cidr_block, 3, 1)
  vpc_id = aws_vpc.kiez-env.id
  availability_zone = "eu-central-1"
}