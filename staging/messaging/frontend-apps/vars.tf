variable "region" {
  default = "eu-west-1"
}

variable "image_id" {
  default = "ami-0991545700e8e15e4"
}

variable "key_name_infra" {
  default = "CellulantInfra"
}

variable "messaging_common_sg" {
  default = "sg-04bf1ae8b423ac3d9"
}

variable "messaging_va_sg" {
  default = "sg-00f58d77549732b0c"
}
variable "messaging_vt_sg" {
  default = "sg-01f3f78dc9206d142"
}
variable "messaging-mq-sg" {
  default = "sg-0c8384c80f6ae942e"
}
variable "messaging_Backends_Apps_AZ1" {
  default = "subnet-0b9bf045a4db46e48"
}
variable "messaging_Backends_Apps_A2Z" {
  default = "subnet-046900b3a2f2e8bda"
}
variable "messaging_JD_Redis_MQ_AZ1" {
  default = "subnet-07331196533430c43"
}
variable "messaging_JD_Redis_MQ_AZ2" {
  default = "subnet-060a0e29913a54fc8"
}
variable "messaging_Web_Tools_AZ1" {
  default = "subnet-0e08047e3a703aa7a"
}
variable "messaging_Web_Tools_AZ2" {
  default = "subnet-0655d7ffde5498cf5"
}
variable "messaging_ALB_AZ1" {
  default = "subnet-0934e29787bb3bade"
}
variable "messaging_ALB_AZ2" {
  default = "subnet-085d07f1cfe938757"
}
