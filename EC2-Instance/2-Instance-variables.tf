
   
# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t3.micro"  
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type = string
  default = "gerson-key"
}

variable "vpc_public_subnets" {
  description = "EC2 Public Subnets"
  type = string
  default = "subnet-0b4122c5babc38e30"
}

