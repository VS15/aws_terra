variable "AWS_REGION" {
  default = "us-east-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "AMIS" {
  type = "map"
  default = {
    us-east-2 = "ami-0cf8cc36b8c81c6de"
  }
}
