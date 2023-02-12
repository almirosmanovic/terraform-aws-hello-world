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
  
