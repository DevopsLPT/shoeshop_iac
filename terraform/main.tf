provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("admin_gke.json")
}

module "network" {
  source          = "./modules/network"  
  project_id      = var.project_id       
  region          = var.region          
  vpc_name        = var.vpc_name     
  public_subnets  = var.public_subnets
}

module "load_balancing" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.lb_instance_name
  machine_type_instance = var.lb_machine_type_instance
  zone                 = var.lb_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[1]
  internal_ip          = var.lb_internal_ip
  boot_disk_image      = var.lb_boot_disk_image
  boot_disk_size       = var.lb_boot_disk_size
  ssh_keys             = "${var.lb_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.lb_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.lb_firewall_name
  allow_rules          = var.lb_allow_rules
  source_ranges        = var.lb_source_ranges

  create_additional_disk  = var.lb_create_additional_disk
}  

module "sonarqube_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name         = var.sonarqube_instance_name
  machine_type_instance = var.sonarqube_machine_type_instance
  zone                  = var.sonarqube_zone
  network               = module.network.vpc_name
  subnet                = module.network.public_subnet_names[1]
  internal_ip           = var.sonarqube_internal_ip
  boot_disk_image       = var.sonarqube_boot_disk_image
  boot_disk_size        = var.sonarqube_boot_disk_size
  ssh_keys              = "${var.sonarqube_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.sonarqube_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.sonarqube_firewall_name
  allow_rules          = var.sonarqube_allow_rules
  source_ranges        = var.sonarqube_source_ranges

  create_additional_disk  = var.sonarqube_create_additional_disk
  disk_type               = var.sonarqube_disk_type
  disk_size               = var.sonarqube_disk_size
}  

module "portainer_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name         = var.portainer_instance_name
  machine_type_instance = var.portainer_machine_type_instance
  zone                  = var.portainer_zone
  network               = module.network.vpc_name
  subnet                = module.network.public_subnet_names[1]
  internal_ip           = var.portainer_internal_ip
  boot_disk_image       = var.portainer_boot_disk_image
  boot_disk_size        = var.portainer_boot_disk_size
  ssh_keys              = "${var.portainer_user_name}:${file("./id_rsa.pub")}"

  user_name             = var.portainer_user_name
  inventory_path        = var.inventory_path
  private_key_path      = var.private_key_path

  firewall_name         = var.portainer_firewall_name
  allow_rules           = var.portainer_allow_rules
  source_ranges         = var.portainer_source_ranges

  create_additional_disk  = var.portainer_create_additional_disk
  disk_type               = var.portainer_disk_type
  disk_size               = var.portainer_disk_size
}  

module "artifact_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.artifact_instance_name
  machine_type_instance = var.artifact_machine_type_instance
  zone                 = var.artifact_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[1]
  internal_ip          = var.artifact_internal_ip
  boot_disk_image      = var.artifact_boot_disk_image
  boot_disk_size       = var.artifact_boot_disk_size
  ssh_keys             = "${var.artifact_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.artifact_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.artifact_firewall_name
  allow_rules          = var.artifact_allow_rules
  source_ranges        = var.artifact_source_ranges

  create_additional_disk  = var.artifact_create_additional_disk
  disk_type               = var.artifact_disk_type
  disk_size               = var.artifact_disk_size
}  


module "vault_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.vault_instance_name
  machine_type_instance = var.vault_machine_type_instance
  zone                 = var.vault_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[1]
  internal_ip          = var.vault_internal_ip
  boot_disk_image      = var.vault_boot_disk_image
  boot_disk_size       = var.vault_boot_disk_size
  ssh_keys             = "${var.vault_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.vault_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.vault_firewall_name
  allow_rules          = var.vault_allow_rules
  source_ranges        = var.vault_source_ranges

  create_additional_disk  = var.vault_create_additional_disk
  disk_type               = var.vault_disk_type
  disk_size               = var.vault_disk_size
}  


module "frontend_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.fe_instance_name
  machine_type_instance = var.fe_machine_type_instance
  zone                 = var.fe_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[1]
  internal_ip          = var.fe_internal_ip
  boot_disk_image      = var.fe_boot_disk_image
  boot_disk_size       = var.fe_boot_disk_size
  ssh_keys             = "${var.fe_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.fe_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.fe_firewall_name
  allow_rules          = var.fe_allow_rules
  source_ranges        = var.fe_source_ranges

  create_additional_disk  = var.fe_create_additional_disk
  disk_type               = var.fe_disk_type
  disk_size               = var.fe_disk_size
}  

module "backend_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.be_instance_name
  machine_type_instance = var.be_machine_type_instance
  zone                 = var.be_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[1]
  internal_ip          = var.be_internal_ip
  boot_disk_image      = var.be_boot_disk_image
  boot_disk_size       = var.be_boot_disk_size
  ssh_keys             = "${var.be_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.be_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.be_firewall_name
  allow_rules          = var.be_allow_rules
  source_ranges        = var.be_source_ranges

  create_additional_disk  = var.be_create_additional_disk
  disk_type               = var.be_disk_type
  disk_size               = var.be_disk_size
}  

