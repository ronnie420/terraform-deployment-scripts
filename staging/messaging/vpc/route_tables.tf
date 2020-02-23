# aws_route_table.CDE_MAIN:
resource "aws_route_table" "CDE_MAIN" {
    vpc_id     = var.CDE_VPC_ID

route {
        cidr_block = "0.0.0.0/0"
        transit_gateway_id        = var.TRANSIT_GATEWAY_ID
    
}

route {
        cidr_block = "10.1.7.0/24"
        gateway_id = "vgw-0bb5385a2b2af3328"
    }

route {
        cidr_block = "10.250.0.0/16"
        vpc_peering_connection_id = aws_vpc_peering_connection.cde_to_frankfurt.id
    }

tags  = {
        Environment = "Production"
        Name = "CDE_MAIN"
    
}

}

# aws_route_table.CDE_TOKENS_MAIN:
resource "aws_route_table" "CDE_TOKENS_MAIN" {
    vpc_id     = var.CDE_TOKENS_VPC_ID

route {
        cidr_block = "0.0.0.0/0"
        transit_gateway_id = var.TRANSIT_GATEWAY_ID
    
}

route {
        cidr_block = "10.250.4.128/32"
         vpc_peering_connection_id = aws_vpc_peering_connection.cde_tokens_to_frankfurt.id
    
}

route {
        cidr_block = "10.250.4.217/32"
        vpc_peering_connection_id = aws_vpc_peering_connection.cde_tokens_to_frankfurt.id
    }
tags  = {
        Environment = "Production"
        Name = "CDE_TOKENS_MAIN"
    
}

}
