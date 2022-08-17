
### Environment 
variable "environment" {
  type    = string
  default = "dev"
}

variable "application" {
  type    = string
  default = "test"
}

variable "aws_region" {
  description = "my region"
  default     = "us-east-1"
}

### IAM roles

variable "username" {
  type    = list(string)
  default = ["kyle_sorrels"]
}
variable "au_tf_user" {
  type    = string
  default = "au_tf"
}

## Subnets
variable "public_subnet_az1_cidr" {
  type    = string
  default = "10.10.100.0/24"
}

variable "public_subnet_az2_cidr" {
  type    = string
  default = "10.10.101.0/24"
}

variable "public_subnet_az3_cidr" {
  type    = string
  default = "10.10.102.0/24"
}

variable "private_subnet_az1_cidr" {
  type    = string
  default = "10.10.10.0/24"
}

variable "private_subnet_az2_cidr" {
  type    = string
  default = "10.10.11.0/24"
}

variable "private_subnet_az3_cidr" {
  type    = string
  default = "10.10.12.0/24"
}


### ecr repository

variable "ecr_repositories" {
  type        = list(string)
  description = "List of Container registries to create"
  default     = ["first", "second", "third"]
}


### EKS

variable "create_eks" {
  type        = bool
  description = "Should we create the EKS cluster"
  default     = false
}

variable "eks_node_instance_type" {
  type        = list(string)
  description = "Amazon instance type for the node group"
  default     = ["t3.large"]
}

variable "eks_node_instance_count" {
  type        = string
  description = "Amazon instance COUNT for the node group"
  default     = "2"
}

