variable "region" {
    description = "Thee AWS region to deploy resources in"
    type = string
    default = "us-west-2"
}

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

resource "aws_instance" "myserver" {
    ami = "ami-0786adace1541ca80"
    instance_type = "t3.nano"


    tags = {
        Name = "SampleServer"
    }
}