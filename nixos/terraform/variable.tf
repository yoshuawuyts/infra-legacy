variable "infra_name" {
  description = "name of your infrastructure"
}
variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "public_key_path" {
  description = "Path to the SSH public key to be used for authentication"
  default = "~/.ssh/id_rsa.pub"
}

variable "public_key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers"
  default = "us-west-2"
}

variable "aws_instance_type" {
  description = "AWS instance type"
  default = "t2.nano"
}

# NixOS "15.09".<region>.hvm-ebs
# https://github.com/NixOS/nixops/blob/master/nix/ec2-amis.nix
variable "aws_amis" {
  default = {
    ap-southeast-2 = "ami-996c4cfa"
  }
}
