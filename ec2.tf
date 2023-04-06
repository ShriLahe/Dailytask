resource "aws_instance" "web_server" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [
      aws_security_group.ssh_access.id
  ]
