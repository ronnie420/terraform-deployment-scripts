variable "region" {
  default = "eu-west-1"
}

variable "staging_region" {
  default = "eu-central-1"
}

variable "AZ1_NAME" {
  default = "eu-west-1a"
}

variable "AZ2_NAME" {
  default = "eu-west-1b"
}

variable "CDE_VPC_NAME" {
  default = "CDE"
}

variable "CDE_TOKEN_VPC_NAME" {
  default = "CDE_TOKEN"
}

variable "CDE_CIDR" {
  default = "10.105.0.0/16"
}

variable "CDE_TOKEN_CIDR" {
  default = "10.106.0.0/16"
}

#CDE_AZ1 Subnets
variable "CDE_ELB_AZ1" {
  default = "10.105.10.0/24"
}

variable "CDE_Backends_Apps_AZ1" {
  default = "10.105.11.0/24"
}

variable "CDE_Web_Tools_AZ1" {
  default = "10.105.12.0/24"
}

variable "CDE_JD_Redis_MQ_AZ1" {
  default = "10.105.13.0/24"
}

variable "CDE_DB_AZ1" {
  default = "10.105.14.0/24"
}

#CDE_AZ2 Subnets
variable "CDE_ELB_AZ2" {
  default = "10.105.50.0/24"
}

variable "CDE_Backends_Apps_AZ2" {
  default = "10.105.51.0/24"
}

variable "CDE_Web_Tools_AZ2" {
  default = "10.105.52.0/24"
}

variable "CDE_JD_Redis_MQ_AZ2" {
  default = "10.105.53.0/24"
}

variable "CDE_DB_AZ2" {
  default = "10.105.54.0/24"
}

#CDE_TOKENS_AZ1 Subnets
variable "CDE_TOKENS_ELB_AZ1" {
  default = "10.106.10.0/24"
}

variable "CDE_TOKENS_Backends_Apps_AZ1" {
  default = "10.106.11.0/24"
}

variable "CDE_TOKENS_Web_Tools_AZ1" {
  default = "10.106.12.0/24"
}

variable "CDE_TOKENS_JD_Redis_MQ_AZ1" {
  default = "10.106.13.0/24"
}

variable "CDE_TOKENS_DB_AZ1" {
  default = "10.106.14.0/24"
}

#CDE_TOKENS_AZ2 Subnets
variable "CDE_TOKENS_ELB_AZ2" {
  default = "10.106.50.0/24"
}

variable "CDE_TOKENS_Backends_Apps_AZ2" {
  default = "10.106.51.0/24"
}

variable "CDE_TOKENS_Web_Tools_AZ2" {
  default = "10.106.52.0/24"
}

variable "CDE_TOKENS_JD_Redis_MQ_AZ2" {
  default = "10.106.53.0/24"
}

variable "CDE_TOKENS_DB_AZ2" {
  default = "10.106.54.0/24"
}

variable "CDE_OWNER_ID" {
  default = "102430194655"
}

variable "CDE_VPC_ID" {
  default = "vpc-023cb1e8e31acba29"
}

variable "CDE_TOKENS_OWNER_ID" {
  default = "102430194655"
}

variable "CDE_TOKENS_VPC_ID" {
  default = "vpc-0c129938b6408b081"
}

variable "FRANKFURT_VPC_ID" {
  default = "vpc-a06312cb"
}

#TransitGateway ID
variable "TRANSIT_GATEWAY_ID" {
  default = "tgw-086b61d59f94eccaa"
}

