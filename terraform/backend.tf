terraform {
  backend "s3" {
    bucket = "node-aws-jenkins-terraform-dev"
    key    = "node-aws-jenkins-terraform-dev.tfstate"
    region = "us-east-1"
  }
}
