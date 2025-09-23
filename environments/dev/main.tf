provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source                = "../../modules/vpc"
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  
}

module "app_ec2" {
  source           = "../../modules/ec2"
  subnet_id        = module.vpc.public_subnet_id
  sg_id            = module.vpc.web_sg_id
  instance_name    = "dev-app-instance"
  ami_id           = var.ami_id
  instance_type    = var.instance_type
}
