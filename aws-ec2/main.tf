terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.54.1"
        }
    }
}

provider "aws" {
    region = var.region
}

resource "aws_instance" "myserver1" {
    ami = "ami-0786adace1541ca80"
    instance_type = "t3.micro"


    tags = {
        Name = "SampleServer"
    }
}