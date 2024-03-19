resource "aws_security_group" "iti_security_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.iti_vpc_id

  tags = {
    Name = "allow_tls"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.iti_security_group.id
  cidr_ipv4         =  var.cidr_ingress_security_group                
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.iti_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"      
}