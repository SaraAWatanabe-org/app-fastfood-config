terraform {
  backend "s3" {
    bucket = "backend-tfstate-fastfood"
    key    = "postech/terraform.tfstate"
    region = "us-east-1"
  }
}