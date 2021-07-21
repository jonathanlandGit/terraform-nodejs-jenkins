# Zero Downtime Jenkins Continuous Deployment with Terraform on AWS


1. Specify unique bucket 

```
JLandsMBP:~ jonathanland$ aws s3api create-bucket --bucket node-aws-jenkins-terraform-dev --region us-east-1
```

2. Generate ssh key and setup

```
ssh-keygen -t rsa -b 2048 -f ~/.ssh/MyKeyPair.pem -q -P ''
chmod 400 ~/.ssh/MyKeyPair.pem
ssh-keygen -y -f ~/.ssh/MyKeyPair.pem > ~/.ssh/MyKeyPair.pub
```

3. Add path of key to files (e.g. in the vars file add something like this to the path for private 

https://faun.pub/building-repeatable-infrastructure-with-terraform-and-ansible-on-aws-3f082cd398ad

```
variable "public_key" {
  default = "~/.ssh/MyKeyPair.pub"
}


variable "private_key" {
  default = "~/.ssh/MyKeyPair.pem"
}
```

4. Setup Jenkins -> install bitbucket plugin 

5. Test the app


