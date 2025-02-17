project_id = "online-boutique-449209"

region = "asia-southeast1"

################################################################################
# Network Module - Variables 
################################################################################

vpc_name = "shoeshop-vpc" 

public_subnets =  [
    { name = "public-deploy-subnet", cidr = "10.0.1.0/24" },
    { name = "public-tools-subnet", cidr = "10.0.2.0/24" }
  ]

################################################################################
# Ansible - Variables 
################################################################################

inventory_path = "../ansible/inventories/hosts.ini"

private_key_path = "~/.ssh/id_rsa"

################################################################################
# Load Balancing Instance Module - Variables 
################################################################################
lb_instance_name = "load-balancing"

lb_machine_type_instance = "e2-medium"

lb_zone = "asia-southeast1-b"

lb_internal_ip = "10.0.2.2"

lb_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

lb_boot_disk_size = 50

lb_user_name = "root"

lb_firewall_name = "lb-firewall"

lb_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["80"]
  },
  {
    protocol = "tcp"
    ports    = ["443"]
  },
]

lb_source_ranges = ["0.0.0.0/0"]

lb_create_additional_disk = false

################################################################################
# SonarQube Instance Module - Variables 
################################################################################

sonarqube_instance_name = "sonarqube-server"

sonarqube_machine_type_instance = "e2-medium"

sonarqube_zone = "asia-southeast1-b"

sonarqube_internal_ip = "10.0.2.3"

sonarqube_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

sonarqube_boot_disk_size = 50

sonarqube_user_name = "root"

sonarqube_firewall_name = "sonarqube-firewall"

sonarqube_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9000"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

sonarqube_source_ranges = ["0.0.0.0/0"]

sonarqube_create_additional_disk = true

sonarqube_disk_type = "pd-standard"

sonarqube_disk_size = 10

################################################################################
# Portainer Instance Module - Variables 
################################################################################

portainer_instance_name = "portainer-server"

portainer_machine_type_instance = "e2-medium"

portainer_zone = "asia-southeast1-b"

portainer_internal_ip = "10.0.2.4"

portainer_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

portainer_boot_disk_size = 50

portainer_user_name = "root"

portainer_firewall_name = "portainer-firewall"

portainer_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9000"]
  }
]

portainer_source_ranges = ["0.0.0.0/0"]

portainer_create_additional_disk = true

portainer_disk_type = "pd-standard"

portainer_disk_size = 10

################################################################################
# Artifact Instance Module - Variables 
################################################################################

artifact_instance_name = "artifact-server"

artifact_machine_type_instance = "e2-medium"

artifact_zone = "asia-southeast1-b"

artifact_internal_ip = "10.0.2.5"

artifact_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

artifact_boot_disk_size = 50

artifact_user_name = "root"

artifact_firewall_name = "artifact-firewall"

artifact_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["80"]
  },
    {
    protocol = "tcp"
    ports    = ["443"]
  },
  {
    protocol = "tcp"
    ports    = ["8081"]
  },
  {
    protocol = "tcp"
    ports    = ["8082"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

artifact_source_ranges = ["0.0.0.0/0"]

artifact_create_additional_disk = true

artifact_disk_type = "pd-standard"

artifact_disk_size = 10


################################################################################
# Vault Instance Module - Variables 
################################################################################

vault_instance_name = "vault-server"

vault_machine_type_instance = "e2-medium"

vault_zone = "asia-southeast1-b"

vault_internal_ip = "10.0.2.6"

vault_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

vault_boot_disk_size = 50

vault_user_name = "root"

vault_firewall_name = "vault-firewall"

vault_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["8200"]
  },
  {
    protocol = "tcp"
    ports    = ["8201"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

vault_source_ranges = ["0.0.0.0/0"]

vault_create_additional_disk = true

vault_disk_type = "pd-standard"

vault_disk_size = 10


################################################################################
# Frontend Instance Module - Variables 
################################################################################

fe_instance_name = "frontend-server"

fe_machine_type_instance = "e2-medium"

fe_zone = "asia-southeast1-b"

fe_internal_ip = "10.0.2.7"

fe_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

fe_boot_disk_size = 50

fe_user_name = "root"

fe_firewall_name = "frontend-firewall"

fe_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  },
    {
    protocol = "tcp"
    ports    = ["3000"]
  }
]

fe_source_ranges = ["0.0.0.0/0"]

fe_create_additional_disk = true

fe_disk_type = "pd-standard"

fe_disk_size = 10


################################################################################
# Backend Instance Module - Variables 
################################################################################

be_instance_name = "backend-server"

be_machine_type_instance = "e2-medium"

be_zone = "asia-southeast1-b"

be_internal_ip = "10.0.2.8"

be_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

be_boot_disk_size = 50

be_user_name = "root"

be_firewall_name = "backend-firewall"

be_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  },
  {
    protocol = "tcp"
    ports    = ["5214"]
  }
]

be_source_ranges = ["0.0.0.0/0"]

be_create_additional_disk = true

be_disk_type = "pd-standard"

be_disk_size = 10
