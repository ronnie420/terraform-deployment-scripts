variable "region" {
  default = "eu-central-1"
}

variable "image_id" {
  type = string
  default = "ami-4ba48ca0"
}

variable "key_name_infra" {
  default = "CellulantInfra"

}
variable "wallets_sg" {
  default = "sg-08a3b746bd4c67acf"
}

variable "wallets-subnet-az1" {
  default = "subnet-3ac46177"
}

variable "wallets-subnet-az2" {
  default = "subnet-90c175fb"
}

variable "wallets-subnet-az3" {
  default = "subnet-8d55bdf0"
}

variable "mw-wallet-sg-id" {
  default = "sg-08a3b746bd4c67acf"
}

variable "frankfurt-default-vpc-id" {
  default = "vpc-41a8482a"
}
