# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host
module "public_ec2_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.5.0"

  name = "${local.name}-public-ec2-sg"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id = var.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}