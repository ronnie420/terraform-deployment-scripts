variable "image_id" {
  type = string
  default = "ami-0c8f9287e7ce934e7"
}

variable "image_id_updated" {
  type = string
  default = "ami-0da567d8d8423c7b9"
}

variable "key_name_infra" {
  default = "CellulantInfra"

}
variable "payments_common_sg" {
  default = "sg-06f2204452941db8e"
}

variable "payments_ct_sg" {
  default = "sg-0855bd17d203451ec"
}

variable "payments_ca_sg" {
  default = "sg-0bf43f0871ff9b288"
}

variable "payments_ma_sg" {
  default = "sg-0f62f01faca1923d7"
}

variable "payments_ca_jd_sg" {
  default = "sg-05c9a0ebf2655a22c"
}

variable "payments_ma_jd_sg" {
  default = "sg-05c9a0ebf2655a22c"
}
variable "Payments_Backends_Apps_AZ1" {
  default = "subnet-05dd29e61c041d1b8"
}

variable "Payments_Backends_Apps_AZ2" {
  default = "subnet-0446409f423ccef1b"
}

variable "Payments_Web_Tools_AZ1" {
  default = "subnet-08bee3538d93f6591"
}

variable "Payments_Web_Tools_AZ2" {
  default = "subnet-0e77e976760d0ccf4"
}

variable "Payments_DB_AZ1" {
  default = "subnet-0539cf9e764fc62d8"
}

variable "Payments_DB_AZ2" {
  default = "subnet-0ad916fac2d238a33"
}

variable "Payments_ELB_AZ1" {
  default = "subnet-0d8d4b1cc3d0a5698"
}

variable "Payments_ELB_AZ2" {
  default = "subnet-01bfdcf590201d729"
}

variable "Payments_JD_Redis_MQ_AZ1" {
  default = "subnet-0dc0f5238f232f64e"
}

variable "Payments_JD_Redis_MQ_AZ2" {
  default = "subnet-03b98e35ed13a417b"
}
variable "ALB_Subnet_AZ1" {
 default= "subnet-0c0d2a2d6c556f9ef"
}

variable "ALB_Subnet_AZ2" {
 default= "subnet-076a983b140629185"
}

variable "Internet_VPC_ID" {
 default= "vpc-07b3a4ee835863b3f"
}

variable "Payments_VPC_ID" {
 default= "vpc-051a914ade750494c"
}

variable "checkout_remote_sg" {
 default= "sg-071a7bc6b71d1dd38"
}
variable "target_type" {
  default     = "ip"
}
