#**** network vars ***
variable "cidr_block_vpc_iti" {
  description = "cider of vpc subnet"   
}

variable "cidr_block_private" {
  description = "cider of private subnet"    
}

variable "availability_zone_private" { 
  type = string
  description = "it's  availbility zone of the private subnet"
}

variable "cidr_block_public" {
  description = "cider of public subnet"    
}
variable "availability_zone_public"{ 
  type = string
  description = "it's  availbility zone of the public subnet"
}
#---------------------------------------------------------------------
# *** ec2 vars ***
variable "aws_instance_type" {
    description = "define type of instance"
}
variable "ami" {
  description = "image of ec2 instances"
  type = string
}
#--------------------------------------------------------------------
# *** s3 vars ***
variable "s3_bucket_name" {
    description = "s3 bucket name"
    type = string
}
#-------------------------------------------------------------------
# *** security group ***
variable "cidr_ingress_security_group" {
    description = "controls the inbound traffic to the associated resource."  
}

