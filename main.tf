module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr = "10.10.0.0/16"
  public_subnet_cidr = "10.10.0.0/24"
  private_subnet_cidr = "10.10.1.0/24"
}

module "ec2_public" {
  source            = "./modules/ec2-public"
  ami_id            = "ami-09a9858973b288bdd"
  instance_type     = "t3.micro"
  security_group_id = module.vpc.security_group_id
  public_subnet_id  = module.vpc.public_subnet_id
  key_name = "server-key"
}

module "ec2_private" {
  source            = "./modules/ec2-private"
  ami_id            = "ami-09a9858973b288bdd"
  instance_type     = "t3.micro"
  security_group_id = module.vpc.security_group_id
  private_subnet_id = module.vpc.private_subnet_id
  key_name = "server-key"
}