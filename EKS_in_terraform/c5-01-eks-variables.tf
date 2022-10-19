# EKS Cluster Input Variables
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "service ipv4 cidr for the kubernetes cluster"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "Kubernetes minor version to use for the EKS cluster (for example 1.21)"
  type = string
  default     = null
}
variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "gerson-vpc-private-us-east-1b" {
  type    = string
  default = "subnet-0266cb5528143485a"
}

variable "gerson-vpc-private-us-east-1a" {
  type    = string
  default = "subnet-0c3b9dc2f5c506503"
}

variable "vpc_id" {
  type    = string
  default = "vpc-030639a596fe83f66"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "172.28.0.0/16"
}
# EKS Node Group Variables
## Placeholder space you can create if required

