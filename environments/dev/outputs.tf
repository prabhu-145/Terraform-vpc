output "vpc_id"            { value = module.vpc.vpc_id }
output "public_subnet_id"  { value = module.vpc.public_subnet_id }
output "private_subnet_id" { value = module.vpc.private_subnet_id }
output "ec2_instance_id"   { value = module.app_ec2.instance_id }
output "ec2_instance_public_ip" { value = module.app_ec2.public_ip }
