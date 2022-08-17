environment = "dev"
application = "liatrio-int"
aws_region  = "us-east-1"
username    = ["kyle.sorrels"]
au_tf_user  = "au_tf"

public_subnet_az1_cidr  = "10.10.100.0/24"
public_subnet_az2_cidr  = "10.10.101.0/24"
public_subnet_az3_cidr  = "10.10.102.0/24"
private_subnet_az1_cidr = "10.10.10.0/24"
private_subnet_az2_cidr = "10.10.11.0/24"
private_subnet_az3_cidr = "10.10.12.0/24"

ecr_repositories = ["liatrio-int"]

create_eks              = false
eks_node_instance_count = "2"
eks_node_instance_type  = ["t3.large"]


