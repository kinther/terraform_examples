resource "aws_vpc" "main" {
    cidr_block = "192.168.100.0/24"

    tags = {
        Name = "main"
    }
}

resource "aws_subnet" "main" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "192.168.100.0/26"
    availability_zone = "us-west-2a"

    tags = {
        Name = "main"
    }
}

resource "aws_subnet" "secondary" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "192.168.100.64/26"
    availability_zone = "us-west-2b"

    tags = {
        Name = "secondary"
    }
}

resource "aws_subnet" "tertiary" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "192.168.100.128/26"
    availability_zone = "us-west-2c"

    tags = {
        Name = "tertiary"
    }
}

resource "aws_subnet" "public" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "192.168.100.192/26"
    availability_zone = "us-west-2d"

    tags = {
        Name = "public"
    }
}