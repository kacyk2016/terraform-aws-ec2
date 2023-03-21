resource "aws_security _group" "ec2" {
  name = "${var.environment}-${var.name}-alb-sg"
  vpc_id = var.vpc_id
  
  
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    ="tcp"
      cidr blocks = ["76.183.145.65", "64.252.220.92", "104.178.7.253"] #By default it is not allowed to have any instance with ports open from world of for any other cidr block
 }
} 

egress {
  protocol      = " -1"
  from_port     = 0
  to_port       = 0
  cidr blocks   = ["0.0.0.0/0"]
}
  
tags = var.tags
}
