resource "aws_subnet" "subnet" {
  cidr_block = cidrsubnet(aws_vpc.kiez-env.cidr_block, 3, 1)
  vpc_id = aws_vpc.kiez-env.id
  availability_zone = "eu-central-1a"
}

resource "aws_route_table" "route-table" {
  vpc_id = aws_vpc.kiez-env.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
  tags = {
    Name = "route-table"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route-table.id
}