variable "region" {
  default = "us-east-2"
}

variable "accept_region" {
  default = "us-east-2"
}

variable "AZ1_NAME" {
  default = "us-east-2a"
}

variable "AZ2_NAME" {
  default = "us-east-2b"
}

variable "DTAP_01_VPC_NAME" {
  default = "DTAP_01"
}

variable "DTAP_01_CIDR" {
  default = "172.21.0.0/16"
}

#DTAP_01_AZ1 Subnets
variable "DTAP_01_ELB_AZ1" {
  default = "172.21.0.0/24"
}

variable "DTAP_01_Backends_Apps_AZ1" {
  default = "172.21.1.0/24"
}

variable "DTAP_01_Web_Tools_AZ1" {
  default = "172.21.2.0/24"
}

variable "DTAP_01_JD_Redis_MQ_AZ1" {
  default = "172.21.3.0/24"
}

variable "DTAP_01_DB_AZ1" {
  default = "172.21.4.0/24"
}

variable "DTAP_01_PUBLIC_AZ1" {
  default = "172.21.5.0/24"
}

#DTAP_01_AZ2 Subnets
variable "DTAP_01_ELB_AZ2" {
  default = "172.21.50.0/24"
}

variable "DTAP_01_Backends_Apps_AZ2" {
  default = "172.21.51.0/24"
}

variable "DTAP_01_Web_Tools_AZ2" {
  default = "172.21.52.0/24"
}

variable "DTAP_01_JD_Redis_MQ_AZ2" {
  default = "172.21.53.0/24"
}

variable "DTAP_01_DB_AZ2" {
  default = "172.21.54.0/24"
}

variable "DTAP_01_PUBLIC_AZ2" {
  default = "172.21.55.0/24"
}

variable "FRANKFURT_VPC_ID" {
  default = "vpc-a06312cb"
}
variable "DTAP_01_OWNER_ID" {
  default = "102430194655"

}
