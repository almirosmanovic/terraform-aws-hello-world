output "public_ip" {
  value = ["${aws_instance.example.*.public_ip}"]
  description = "The public IP of the web server"
}

output "instance_id" {
  value = ["${aws_instance.example.*.id}"]
  description = "The instance ID of the web server"
}

output "instance_count" {
  value = var.instance_count
  description = "The number of instances created"
}

output "instance_type" {
  value = var.server_type
  description = "The type of instance created"
}

output "sec_group" {
  value = var.sec_group
  description = "The security group created"
}

output "sec_group_id" {
  type = "string"
  value = aws_security_group.instance.id
  description = "The security group ID created"
}
output "ami" {
  value = var.ami
  description = "The AMI used to create the instance"
}
