terraform {
  required_version = ">= 0.12"
}

# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = "eu-west-1"
}

module "test" {
    source = "github.com/almirosmanovic/terraform-hello-world.git?ref=1.0.1"
    #version = "1.0.1"
}

