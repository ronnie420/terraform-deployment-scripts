variable "region" {
  default = "eu-west-1"
}

variable "image_id" {
  type = string
  default = "ami-0c8f9287e7ce934e7"
}

variable "key_name_infra" {
  default = "CellulantInfra"

}
variable "wallets_sg" {
  default = "sg-021a3563d37205492"
}

variable "mula_wallets_backend_apps_az1" {
  default = "subnet-03f211b3b7365130d"
}

