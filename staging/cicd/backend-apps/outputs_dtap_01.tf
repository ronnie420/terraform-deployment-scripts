output "dtap_nexus_01_private_ip" {
  value = "${module.dtap_nexus_01.private_ip[0]}"
}

output "dtap_consul_01_private_ip" {
  value = "${module.dtap_consul_01.private_ip[0]}"
}

output "dtap_gitlab_01_private_ip" {
  value = "${module.dtap_gitlab_01.private_ip[0]}"
}

output "dtap_rancher_01_private_ip" {
  value = "${module.dtap_rancher_01.private_ip[0]}"
}

