provider "aws" {
 region = "eu-north-1"
}

resource "aws_key_pair" "log_key"{
    key_name = "log-key"
    public_key = file("/mnt/c/Users/sujee/.ssh/id_rsa.pub")
}

resource "aws_security_group" "my_vpc" {
    name = "my_vpc"
    
    ingress  {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress  {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
  
}

resource "aws_instance" "my_instance" {
    ami = 
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.my_vpc.id]
    key_name = aws_key_pair.log_key.key_name
    tags = {
        Name = "my_instance"
        Env = "Development"
    }

}

output "public ip" {
  value = aws_instance.my_instance.public_ip
}
