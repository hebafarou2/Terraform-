# for iti_vpc
variable "cidr_block_vpc_iti" {
  description = "cider of vpc subnet"    
}
#-----------------------------------------------------
#for private_subnet
variable "cidr_block_private" {
  description = "cider of private subnet"    
}
variable "availability_zone_private"{ 
  type = string
  description = "it's  availbility zone of the private subnet"
}
#------------------------------------------------------
#for public subnet 
variable "cidr_block_public" {
  description = "cider of public subnet"    
}
variable "availability_zone_public"{ 
 type = string 
  description = "it's  availbility zone of the public subnet"
}

