# Create VPC.
module "VPC" {
  source = "./VPC"

  environment = var.environment
  region = var.region
}

# Create EC2 Instance.
module "EC2" {
  source = "./EC2"

  environment = var.environment
  region = var.region
  ami_id = var.ami_id
  public_subnet_id = module.Subnets.public_subnet_id
  private_subnet_id = module.Subnets.private_subnet_id
}

# Create subnets.
module "Subnets" {
  source = "./Subnets"

  environment = var.environment
  region = var.region
  vpc_id = module.VPC.vpc_id
}