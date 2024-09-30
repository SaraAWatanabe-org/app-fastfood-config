terraform {
  backend "s3" {
    bucket = "backend-tfstate-fastfood-app"
    key    = "fastfood/terraform.tfstate"
    region = "us-east-1"
  }
}