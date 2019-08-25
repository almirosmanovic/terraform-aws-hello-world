# Terraform Hello World

[![AWS](https://d2908q01vomqb2.cloudfront.net/da4b9237bacccdf19c0760cab7aec4a8359010b0/2017/07/27/AWS_Logo_PoweredBy_127px.png)]()

[![Build Status](https://travis-ci.org/almirosmanovic/terraform-hello-world.svg?branch=master)](https://https://travis-ci.org/almirosmanovic/terraform-hello-world)

Here is simple terraform code how to build few stand-alone servers in default vpc, or just use it as a module.

# Input Variables

  | Variable         | Type | Default | Note  |   |
|------------------|------|---------|---|---|
| server_list_port |  list    |  80, 8081, 8083       | Security Group Port List Ingress Egress  
| server_type      | string     |  t3.micro         | VM Instance Type  
| instance_count   |  number    |  2          | Number of Instance to launch  
| sec_group   |  string    |  security-sg          | Security Group for EC2 Instance name  
| ami   |  string    |  ami-067b6923c66564bf6          | Amazon Machine Image eu-west-1  
| aws_region | string | eu-west-1 | AWS Region

# Output Variables

| Variable         | Type | Default |  Note |   |
|------------------|------|---------|---|---|
|public_ip|string|list|ipv4 