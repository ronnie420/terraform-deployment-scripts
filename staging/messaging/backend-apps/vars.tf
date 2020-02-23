variable "region" {
  default = "eu-east-2"
}

variable "image_id" {
  default = "ami-052f36331f14de70c"
}

variable "key_name_infra" {
  default = "Cellulant_Ohio"
}

variable "vpc_id" {
  default = "vpc-0666cc9b754139d76"
}
variable "messaging_common_sg" {
  default = "sg-0d8eea12eaa5cba77"
}

variable "staging_common_sg" {
  default = "sg-06279127838ebeda3"
}

variable "backend_Subnet_AZ1" {
  default = "subnet-08600b00d522c77c5"
}

variable "backend_Subnet_AZ2" {
  default = "subnet-0fb9e4863cf33ea4d"
}
