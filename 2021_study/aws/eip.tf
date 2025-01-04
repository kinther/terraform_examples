resource "aws_eip" "eip2a" {
    depends_on = [
        aws_route_table_association.inet_association
    ]

    vpc = true

    tags = {
        Name = "eip2a"
    }
}