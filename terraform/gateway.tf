resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.kiez-env.id
  tags = {
    Name = "gateway"
  }
}