output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet" {
  value = module.vpc.public_subnet_id
}

output "private_subnet" {
  value = module.vpc.private_subnet_id
}

output "public_instance_ip" {
  value = module.ec2.public_instance_ip
}

output "private_instance_ip" {
  value = module.ec2.private_instance_ip
}