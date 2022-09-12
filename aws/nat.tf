
resource "aws_nat_gateway" "NATGateway2a" {
    depends_on = [
        aws_eip.eip2a
    ]

    subnet_id         = aws_subnet.public.id
    allocation_id     = aws_eip.eip2a.id

    tags = {
        Name = "NATGateway2a"
    }
}