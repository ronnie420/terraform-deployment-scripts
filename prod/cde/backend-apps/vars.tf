variable "region" {
  default = "eu-west-1"
}

variable "image_id" {
  default = "ami-0991545700e8e15e4"
}

variable "image_id_ireland_default" {
  default = "ami-0da567d8d8423c7b9"
}

variable "key_name_infra" {
  default = "CellulantInfra"
}

variable "username" {
 default= "infrastructure"
}

variable "password" {
 default = ""

}

variable "cde_remote_sg" {
 default= "sg-0d59994b39054f7dc"
}

variable "non_cde_remote_sg" {
 default= "sg-03bb6b966ae8c84cd"
}

variable "db_name" {
 default = "non_cde_db1"
}

variable "db_identifier" {
 default = "non-cde-db1-aurora"
}

variable "vc_sg" {
 default = "sg-088338fc24e33cdcd"
}

variable "cde_common_sg" {
 default = "sg-088338fc24e33cdcd"
}

variable "non_cde_common_sg" {
 default = "sg-0d500c7752a42d0e9"
}

variable "kakuna_sg" {
 default = "sg-0fa7402a01e278eb9"
}

variable "CDE_TOKENS_ELB_AZ1"{
 default = "subnet-0e4347ec2eeed7d2a"
}

variable "CDE_TOKENS_ELB_AZ2"{
 default = "subnet-0ce8719920b5a498a"
}

variable "CDE_ELB_AZ1"{
 default = "subnet-0fb43193e61c8882d"
}

variable "CDE_ELB_AZ2"{
 default = "subnet-0bd2f76228d4de9af"
}

variable "CDE_TOKENS_VPC_ID"{
 default = "vpc-0c129938b6408b081"
}

variable "CDE_VPC_ID"{
 default = "vpc-023cb1e8e31acba29"
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
variable "cde_rabbitmq_remote_sg"{
 default="sg-07fce9c7e013be85c"
}

variable "non_cde_rabbitmq_remote_sg"{
 default="sg-07bee52b4ab6d4ef7"
}
