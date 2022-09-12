resource "aws_route_table" "public_routes" {
    depends_on = [
        aws_vpc.main,
        aws_internet_gateway.inet_gw
    ]

    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.inet_gw.id
    }

}

resource "aws_route_table_association" "inet_association" {
    depends_on [
        aws_route_table.public_routes
    ]

    subnet_id = aws_subnet.public.id

    route_table_id = aws_route_table.public_routes.id
    
}

resource "aws_route_table" "private_routes" {
    depends_on = [
        aws_nat_gateway.NATGateway2a
    ]

    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.NATGateway2a.id
    }

}

resource "aws_route_table_association" "nat_association" {
    depends_on [
        aws_route_table.private_routes
    ]

    subnet_id = aws_subnet.public.id

    route_table_id = aws_route_table.public_routes.id
    
}