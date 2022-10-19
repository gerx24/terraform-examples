# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

## ec2_public_instance_ids
output "ec2_instance_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_public.id
}

## ec2_public_ip
output "ec2_public_ip" {
  description = "Elastic IP associated to the Bastion Host"
  value       = aws_eip.ec2_eip.public_ip
}
