variable "region" {
  default = "us-east-2"
}


variable "AZ1_NAME" {
  default = "us-east-2a"
}

variable "AZ2_NAME" {
  default = "us-east-2b"
}

variable "INTERNET_VPC_NAME" {
  default = "INTERNET_OHIO"
}

variable "INTERNET_VPC_CIDR" {
  default = "172.22.0.0/16"
}
#ALB_Subnet_AZ1 Subnets
variable "ALB_Subnet_AZ1" {
  default = "172.22.0.0/24"
}

#ALB_Subnet_AZ2 Subnets
variable "ALB_Subnet_AZ2" {
  default = "172.22.1.0/24"
}

#Public_Subnet_AZ1 Subnets
variable "Public_Subnet_AZ1" {
  default = "172.22.51.0/24"
}

#Public_Subnet_AZ2 Subnets
variable "Public_Subnet_AZ2" {
  default = "172.22.52.0/24"
}
