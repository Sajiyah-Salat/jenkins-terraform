terraform {
  backend "s3" {
    bucket = "cicd-terraf-eks"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
    # encrypt  = true
    # profile  = "default" 
  }
}