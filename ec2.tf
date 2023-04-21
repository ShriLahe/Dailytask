resource "aws_instance" "web_server" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ssh_access.id]
  associate_public_ip_address = true
  
  
  user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update -y
        sudo apt-get install apache2 -y
        sudo systemctl start apache2
        sudo systemctl enable apache2
        echo "<html><body><h1>Welcome to my website!</h1></body></html>" > /var/www/html/index.html
        sudo systemctl restart apache2
  EOF

  tags = {
    "Name" : "WebServerInstall"
  }
} 
