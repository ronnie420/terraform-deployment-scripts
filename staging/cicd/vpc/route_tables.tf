## aws_route_table.DTAP_01_MAIN:
#resource "aws_route_table" "DTAP_01_MAIN" {
#    vpc_id     = "${aws_vpc.DTAP_01_VPC.id}"
#
#route {
#        cidr_block = "0.0.0.0/0"
#        transit_gateway_id        = "${aws_internet_gateway.DTAP_01_GW.id}"
#}
#
#route {
#        cidr_block = "10.250.0.0/16"
#        vpc_peering_connection_id = "pcx-0235fcebc853f72d7"
#    }
#
#tags  = {
#        Environment = "Production"
#        Name = "DTAP_01_MAIN"
#    
#}
#
#}
#
