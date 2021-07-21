variable "RDS_PASSWORD" {
  default = "somepassword"
}

variable "API_PORT" {
  default = "5432"
}

variable "WEB_PORT" {
  default = "8080"
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  # default = "mykey"
  default = " /Users/jonathanland/.ssh/blah.pem"
  # default = "~/.ssh/MyKeyPair.pem"
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

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
