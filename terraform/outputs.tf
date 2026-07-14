output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "public_ec2_ip" {
  value = module.ec2.public_instance_ip
}

output "private_ec2_ip" {
  value = module.ec2.private_instance_ip
}