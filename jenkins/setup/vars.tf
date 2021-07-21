variable "AWS_REGION" {
  default = "us-east-1"
}
variable "PATH_TO_PRIVATE_KEY" {
  # default = "mykey"
  default = "/Users/jonathanland/.ssh/blah.pem"
}
variable "PATH_TO_PUBLIC_KEY" {
  # default = "mykey.pub"
  default = "/Users/jonathanland/.ssh/blah.pub"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0ee02acd56a52998e"
    us-west-2 = "ami-0dd273d94ed0540c0"
  }
}
variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
variable "JENKINS_VERSION" {
  default = "2.277.1"
}
variable "TERRAFORM_VERSION" {
  default = "0.11.10"
}

variable "APP_INSTANCE_COUNT" {
  default = "0"
}
