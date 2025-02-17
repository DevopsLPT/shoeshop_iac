################################################################################
# VPC Module - Output 
################################################################################

output "vpc_name" {
  description = "The name of the created VPC"
  value       = module.network.vpc_name
}

output "public_subnet_names" {
  description = "The name of the created Subnet"
  value       = module.network.public_subnet_names
}

output "public_subnet_cidrs" {
  description = "The CIDR range of the created Subnet"
  value       = module.network.public_subnet_cidrs
}

################################################################################
# Load Balancing Instance Module - Variables 
################################################################################
output "load_balancing_ip" {
  description = "The public IP of the instance"
  value       = module.load_balancing.instance_ip
}

output "load_balancing_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.load_balancing.internal_ip
}


output "load_balancing_persistent_disk_name" {
  value = module.load_balancing.disk_name
  description = "The name of the persistent disk."
}

################################################################################
# SonarQube Instance Module - Output 
################################################################################

output "sonarqube_instance_ip" {
  description = "The public IP of the instance"
  value       = module.sonarqube_instance.instance_ip
}

output "sonarqube_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.sonarqube_instance.internal_ip
}

output "sonarqube_persistent_disk_name" {
  value = module.sonarqube_instance.disk_name
  description = "The name of the persistent disk."
}

output "sonarqube_disk_self_link" {
  value = module.sonarqube_instance.disk_self_link
  description = "The self link of the persistent disk."
}
################################################################################
# Portainer Instance Module - Output 
################################################################################

output "portainer_instance_ip" {
  description = "The public IP of the instance"
  value       = module.portainer_instance.instance_ip
}

output "portainer_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.portainer_instance.internal_ip
}

output "portainer_persistent_disk_name" {
  value = module.portainer_instance.disk_name
  description = "The name of the persistent disk."
}

output "portainer_disk_self_link" {
  value = module.portainer_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Artifact Instance Module - Output 
################################################################################

output "artifact_instance_ip" {
  description = "The public IP of the instance"
  value       = module.artifact_instance.instance_ip
}


output "artifact_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.artifact_instance.internal_ip
}

output "artifact_persistent_disk_name" {
  value = module.artifact_instance.disk_name
  description = "The name of the persistent disk."
}

output "artifact_disk_self_link" {
  value = module.artifact_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Vault Instance Module - Output 
################################################################################

output "vault_instance_ip" {
  description = "The public IP of the instance"
  value       = module.vault_instance.instance_ip
}

output "vault_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.vault_instance.internal_ip
}

output "vault_persistent_disk_name" {
  value = module.vault_instance.disk_name
  description = "The name of the persistent disk."
}

output "vault_disk_self_link" {
  value = module.vault_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Frontend Instance Module - Output 
################################################################################

output "frontend_instance_ip" {
  description = "The public IP of the instance"
  value       = module.frontend_instance.instance_ip
}

output "frontend_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.frontend_instance.internal_ip
}

output "frontend_persistent_disk_name" {
  value = module.frontend_instance.disk_name
  description = "The name of the persistent disk."
}

output "frontend_disk_self_link" {
  value = module.frontend_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Backend Instance Module - Output 
################################################################################

output "backend_instance_ip" {
  description = "The public IP of the instance"
  value       = module.backend_instance.instance_ip
}

output "backend_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.backend_instance.internal_ip
}

output "backend_persistent_disk_name" {
  value = module.backend_instance.disk_name
  description = "The name of the persistent disk."
}

output "backend_disk_self_link" {
  value = module.backend_instance.disk_self_link
  description = "The self link of the persistent disk."
}