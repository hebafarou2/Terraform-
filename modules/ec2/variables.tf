variable "aws_instance_type" {
    description = "define type of instance"
}
variable "ami" {
  description = "image of ec2 instances"
  type = string
}


variable "public_subnet_id" {
    description= "define the subnet of ec2 instance1"
    type= string 
}

variable "private_subnet_id" {
    description= " define the subnet of ec2 instance2"
    type= string 
}

