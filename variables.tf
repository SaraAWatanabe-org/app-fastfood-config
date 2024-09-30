variable "name" {
  description = "The name of the cluster"
  type        = string
  default     = "fastfood-cluster"
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.123.0.0/16"
}

variable "azs" {
  description = "The availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
  description = "The public subnets"
  type        = list(string)
  default     = ["10.123.1.0/24", "10.123.2.0/24"]
}

variable "private_subnets" {
  description = "The private subnets"
  type        = list(string)
  default     = ["10.123.3.0/24", "10.123.4.0/24"]
}

variable "intra_subnets" {
  description = "The intra subnets"
  type        = list(string)
  default     = ["10.123.5.0/24", "10.123.6.0/24"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Example = "fastfood-cluster"
  }
}