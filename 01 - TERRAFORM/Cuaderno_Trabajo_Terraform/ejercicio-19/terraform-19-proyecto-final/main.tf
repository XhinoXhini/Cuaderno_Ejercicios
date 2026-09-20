provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = "10.90.0.0/16"
}

locals {
  subnets = {
    publica = "10.90.1.0/24"
    privada = "10.90.2.0/24"
  }
}

resource "aws_subnet" "subnets" {
  for_each   = local.subnets
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = each.value

  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "sg_aula" {
  vpc_id = aws_vpc.vpc_aula.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "ec2_publica" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnets["publica"].id

  tags = {
    Name = "ec2-aula"
  }
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "aula-devops-s3-94827103"
}