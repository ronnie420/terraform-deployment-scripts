variable "username" {
 default= "infrastructure"
}

variable "ohio_image_id" {
  type = string
  default = "ami-0a78827b1a18740d1"
}

variable "key_name_Ohio" {
 default= "Cellulant_Ohio"
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

variable "slam_common_sg" {
  default = "sg-0954f79f90ac3d452"
}

variable "backend_Subnet_AZ1" {
  default = "subnet-08600b00d522c77c5"

}

variable "backend_Subnet_AZ2" {
  default = "subnet-0fb9e4863cf33ea4d"

}

variable "frontend_Subnet_AZ1" {
  default = "subnet-0768d56ae024c6134"
}

variable "frontend_Subnet_AZ2" {
  default = "subnet-07d6fca941dd65e98"
}
