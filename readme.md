# Terraform Hello World

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/almirosmanovic/terraform-hello-world.svg?branch=master)](https://https://travis-ci.org/almirosmanovic/terraform-hello-world)

Dillinger is a cloud-enabled, mobile-ready, offline-storage, AngularJS powered HTML5 Markdown editor.
Hello World Terraform Script

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