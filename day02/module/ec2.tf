data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  count         = var.servers
  ami           = var.image_id
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorldTest"
  }
}
