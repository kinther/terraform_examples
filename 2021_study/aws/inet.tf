resource "aws_internet_gateway" "inet_gw" {
  depends_on = [
    aws_vpc.main,
    aws_subnet.main,
    aws_subnet.secondary,
    aws_subnet.tertiary,
    aws_subnet.public
  ]
  
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "inet_gw"
  }

}