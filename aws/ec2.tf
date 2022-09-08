resource "aws_instance" "app_server1" {
    instance_type     = "t2.micro"
    ami               = "ami-0d70546e43a941d70"
    availability_zone = "us-west-2a"

    network_interface {
        network_interface_id = aws_network_interface.AppServer1Interface.id
        device_index         = 0 
    }

    tags = {
        Name = "AppServer1"
    }
}

resource "aws_network_interface" "AppServer1Interface" {
    subnet_id   = aws_subnet.main.id
    private_ips = ["192.168.100.10"]

    tags = {
        Name = "AppServer1Primary"
    }
}

resource "aws_instance" "app_server2" {
    instance_type     = "t2.micro"
    ami               = "ami-0d70546e43a941d70"
    availability_zone = "us-west-2b"

    network_interface {
        network_interface_id = aws_network_interface.AppServer2Interface.id
        device_index         = 0 
    }

    tags = {
        Name = "AppServer2"
    }
}

resource "aws_network_interface" "AppServer2Interface" {
    subnet_id   = aws_subnet.secondary.id
    private_ips = ["192.168.100.80"]

    tags = {
        Name = "AppServer1Primary"
    }
}

resource "aws_instance" "app_server3" {
    instance_type     = "t2.micro"
    ami               = "ami-0d70546e43a941d70"
    availability_zone = "us-west-2c"

    network_interface {
        network_interface_id = aws_network_interface.AppServer3Interface.id
        device_index         = 0 
    }

    tags = {
        Name = "AppServer3"
    }
}

resource "aws_network_interface" "AppServer3Interface" {
    subnet_id   = aws_subnet.tertiary.id
    private_ips = ["192.168.100.150"]

    tags = {
        Name = "AppServer3Primary"
    }
}