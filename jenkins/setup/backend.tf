terraform {
  backend "s3" {
    bucket = "node-aws-jenkins-terraform"
    key    = "jenkins.terraform.tfstate"
    region = "us-east-1"
  }
}
