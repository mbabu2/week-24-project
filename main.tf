# --- root/main.tf ---

module "networking" {
  source       = "./networking"
  vpc_cidr     = "172.31.0.0/16"
  public_cidrs = ["172.31.16.0/20", "172.31.32.0/20"]
}

module "compute" {
  source        = "./compute"
  web_sg        = module.networking.web_sg
  public_subnet = module.networking.public_subnet
}
