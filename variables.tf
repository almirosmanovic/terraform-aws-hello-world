# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "aws_region" {
  default = "eu-west-1"
}



variable "ami" {
  description = "Server AMI default eu-west-1"
  default = "ami-067b6923c66564bf6"
  #  ami-0378588b4ae11ec24

}

variable "sec_group" {
  default = "security-sg"
  type = string

}

variable "server_list_port" {
  description = " The Server port list"
  type = list(number)
  default = [80, 8081, 8083]
}

variable "server_type" {
  default = "t3.micro"
}

variable "instance_count" {
  default = 2
}