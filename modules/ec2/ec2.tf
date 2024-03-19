#  *** iti_instance1 for public subnet ***
resource "aws_instance" "iti_instance1" {
  ami = var.ami
  instance_type = var.aws_instance_type 
  subnet_id = var.public_subnet_id
  tags = {
    Name = "instance1.iti"
  }
}
#-----------------------------------------------------
#  *** iti_instance2 for private subnet ***
resource "aws_instance" "iti_instance2" {
  ami = var.ami
  instance_type = var.aws_instance_type              
  subnet_id = var.private_subnet_id
  tags = {
    Name = "instance2.iti"
  }
}
#----------------------------------------------------------
