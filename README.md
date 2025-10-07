Terraform Module to provision an AWS EC2 instance with the latest Amazon Linux 2023 AMI and install Nginx on it.

Not intended for production use — this is an example module demonstrating how to create and publish a Terraform Registry module.

provider "aws" {
  region = "us-east-1"
}

module "nginx_instance" {
  source     = "app.terraform.io/pngparadise-terraform/nginx-instance/aws"
  key_name   = "write your own key name"
  
}
