#   ****for vpc**** 
resource "aws_vpc" "iti_vpc" {
  cidr_block = var.cidr_block_vpc_iti   
  tags = {
    Name = "vpc.iti"
  }
}
#-----------------------------------------------------------
#   ****for private subnet****
resource "aws_subnet" "private_subnet" {
vpc_id     = aws_vpc.iti_vpc.id
cidr_block = var.cidr_block_private
availability_zone = var.availability_zone_private
  tags = {
    Name = "private_subnet.iti"
  }
}

resource "aws_route_table" "iti_private_route_table" {
  vpc_id = aws_vpc.iti_vpc.id
}

resource "aws_route_table_association" "private_subnet_route_table" {
  route_table_id = aws_route_table.iti_private_route_table.id
  subnet_id      = aws_subnet.private_subnet.id
}

#-----------------------------------------------------------
#   **** for public subnet****
resource "aws_subnet" "public_subnet" {
vpc_id     = aws_vpc.iti_vpc.id
cidr_block = var.cidr_block_public
availability_zone = var.availability_zone_public
  tags = {
    Name = "public_subnet.iti"
  }
}

resource "aws_internet_gateway" "iti_gw" {
  vpc_id = aws_vpc.iti_vpc.id

  tags = {
    Name = "gw.iti"
  }
}
resource "aws_route_table" "iti_public_route_table" {
  vpc_id = aws_vpc.iti_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.iti_gw.id
  }
}
resource "aws_route_table_association" "public_subnet_route_table" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.iti_public_route_table.id
}
resource "aws_route_table_association" "internet_gateway_route_table" {
  gateway_id     = aws_internet_gateway.iti_gw.id
  route_table_id = aws_route_table.iti_public_route_table.id
}
