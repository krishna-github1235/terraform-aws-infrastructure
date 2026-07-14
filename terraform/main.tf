module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
  environment         = var.environment
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id      = module.vpc.vpc_id
  environment = var.environment
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type

  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id

  security_group_id = module.security_group.security_group_id

  user_data         = file("${path.module}/userdata.sh")

  environment       = var.environment
}