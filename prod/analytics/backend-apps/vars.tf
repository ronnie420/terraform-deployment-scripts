variable "username" {
 default= "infrastructure"
}

variable "ami_id" {
 default= "ami-0c8f9287e7ce934e7"
}

variable "ireland_image_id" {
  type = string
  default = "ami-0da567d8d8423c7b9"
}

variable "key_name_infra" {
 default= "CellulantInfra"
}

variable "dw_vpc_common_sg" {
 default= "sg-04029ccbf21c02c26"
}

variable "password" {
 default = ""
}

variable "db_name" {
 default = "analytics_db1"
}

variable "db_identifier" {
 default = "analytics-db1"
}

variable "analytics_db_az1" {
 default = "subnet-05273d4f9cb732cf3"
}

variable "analytics_db_az2" {
 default = "subnet-064e927bed6c44f07"
}

variable "dw_Backends_Apps_AZ1" {
 default= "subnet-094a0be501057ffff"
}
variable "dw_Backends_Apps_AZ2" {
 default= "subnet-0a5ed3e7c68dedca1"
}

variable "dw_Web_Tools_AZ1" {
 default= "subnet-040d9e3a1d3662815"
}

variable "dw_Web_Tools_AZ2" {
 default= "subnet-073a6be70158e31ff"
}

variable "dw_DB_AZ1" {
 default= "subnet-05273d4f9cb732cf3"
}

variable "dw_DB_AZ2" {
 default= "subnet-064e927bed6c44f07"
}

variable "dw_ELB_AZ1" {
 default= "subnet-0a2878454ca6603bc"
}

variable "dw_ELB_AZ2" {
 default= "subnet-0248cd0b6f1b7c464" 
}

variable "dw_JD_Redis_MQ_AZ1" {
 default= "subnet-0394e8c699919c9e0"
}

variable "dw_JD_Redis_MQ_AZ2" {
 default= "subnet-019d83b6f110f373c"
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


variable "dw_VPC_ID" {
 default= "vpc-06179f55e70194d6f"
}

variable "weedle_remote_sg" {
 default= "sg-0dcefd631833314d0"
}
variable "target_type" {
  default     = "instance"
}

variable "slam_mq_sg" {
  default     = "sg-04baa539dab5fdf3a"
}

variable "seel_common_sg" {
 default= "sg-03dacc25d8edfd472"
}
