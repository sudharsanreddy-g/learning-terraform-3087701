data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["12digitid"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = ami-053b0d53c279acc90
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
