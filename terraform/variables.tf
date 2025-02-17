variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
  default     = "online-boutique-449209"
}

variable "region" {
  description = "Google Cloud Region"
  type        = string
  default     = "asia-southeast1"
}

################################################################################
# Network Module - Variables 
################################################################################

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "gke-vpc" 
}

variable "public_subnets" {
  description = "List of public subnets with name and CIDR"
  type = list(object({
    name  = string
    cidr  = string
  }))
  default = [
    { name = "public-gke-subnet", cidr = "10.0.1.0/24" },
    { name = "public-subnet", cidr = "10.0.2.0/24" }
  ]
}

################################################################################
# Ansible - Variables 
################################################################################

variable "inventory_path" {
  description = "Inventory path"
  type        = string
}

variable "private_key_path" {
  description = "private key path"
  type        = string
}

################################################################################
# Load Balancing Instance Module - Variables 
################################################################################


variable "lb_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "lb_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.lb_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "lb_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "lb_internal_ip" {
  type        = string
  default     = null
}

variable "lb_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "lb_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.lb_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "lb_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "lb_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "lb_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "lb_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.lb_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "lb_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}


################################################################################
# SonarQube Instance Module - Variables 
################################################################################

variable "sonarqube_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "sonarqube_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.sonarqube_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "sonarqube_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "sonarqube_internal_ip" {
  type        = string
  default     = null
}

variable "sonarqube_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "sonarqube_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.sonarqube_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "sonarqube_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "sonarqube_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "sonarqube_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "sonarqube_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.sonarqube_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "sonarqube_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "sonarqube_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "sonarqube_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}
################################################################################
# Portainer Instance Module - Variables 
################################################################################

variable "portainer_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "portainer_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.portainer_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "portainer_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "portainer_internal_ip" {
  type        = string
  default     = null
}

variable "portainer_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "portainer_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.portainer_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "portainer_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "portainer_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "portainer_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "portainer_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.portainer_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "portainer_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "portainer_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "portainer_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}

################################################################################
# Artifact Instance Module - Variables 
################################################################################

variable "artifact_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "artifact_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.artifact_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "artifact_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "artifact_internal_ip" {
  type        = string
  default     = null
}

variable "artifact_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "artifact_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.artifact_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "artifact_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "artifact_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "artifact_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "artifact_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.artifact_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "artifact_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "artifact_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "artifact_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}

################################################################################
# Vault Instance Module - Variables 
################################################################################

variable "vault_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "vault_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.vault_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "vault_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "vault_internal_ip" {
  type        = string
  default     = null
}

variable "vault_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "vault_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.vault_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "vault_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "vault_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "vault_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "vault_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.vault_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "vault_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "vault_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "vault_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}


################################################################################
# Frontend Instance Module - Variables 
################################################################################

variable "fe_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "fe_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.fe_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "fe_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "fe_internal_ip" {
  type        = string
  default     = null
}

variable "fe_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "fe_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.fe_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "fe_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "fe_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "fe_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "fe_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.fe_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "fe_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "fe_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "fe_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}

################################################################################
# Backend Instance Module - Variables 
################################################################################

variable "be_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "be_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.be_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "be_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "be_internal_ip" {
  type        = string
  default     = null
}

variable "be_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "be_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.be_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "be_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "be_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "be_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "be_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.be_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "be_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "be_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "be_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}