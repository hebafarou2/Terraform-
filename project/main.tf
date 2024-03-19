module "network" {
    source = "../modules/network"
    cidr_block_vpc_iti = var.cidr_block_vpc_iti
    cidr_block_private = var.cidr_block_private
    availability_zone_private = var.availability_zone_private          
    cidr_block_public = var.cidr_block_public
    availability_zone_public = var.availability_zone_public
}
#---------------------------------------------------------------------
module "ec2" {
    source = "../modules/ec2"
    aws_instance_type = var.aws_instance_type
    ami = var.ami 
    public_subnet_id = module.network.public_subnet_id
    private_subnet_id = module.network.private_subnet_id
}
#--------------------------------------------------------------------
module "s3" {
  source = "../modules/S3"
  s3_bucket_name = var.s3_bucket_name
}
#---------------------------------------------------------------------
module "security_group" {
  source = "../modules/security-group"
  cidr_ingress_security_group = var.cidr_ingress_security_group
  iti_vpc_id = module.network.vpc_id          #assign security group module to network module
}