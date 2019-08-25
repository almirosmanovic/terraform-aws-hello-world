

terraform {
  required_version = ">= 0.12"
}

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = var.aws_region
}



# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY A SINGLE EC2 INSTANCE
# ---------------------------------------------------------------------------------------------------------------------


resource "aws_instance" "example" {
  # Ubuntu Server 18.04 LTS (HVM), SSD Volume Type in us-east-2
  count = var.instance_count
  ami                    = var.ami
  instance_type          = var.server_type
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              service nginx start
              echo "This is test instance ID:" > /var/www/html/index.nginx-debian.html
              curl http://169.254.169.254/latest/meta-data/instance-id >> /var/www/html/index.nginx-debian.html
              service nginx restart
              EOF

    tags = {
      
      Name = "Hello World Version 2"
  }

  
}



# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO THE EC2 INSTANCE
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_security_group" "instance" {
  name = var.sec_group
   
   
   dynamic ingress {
     iterator = port
     for_each = var.server_list_port
     content{
       from_port = port.value
       to_port = port.value
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
     }
   }
   dynamic egress {
     iterator = port
     for_each = var.server_list_port
     content{
       from_port = port.value
       to_port = port.value
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
     }
   }
}