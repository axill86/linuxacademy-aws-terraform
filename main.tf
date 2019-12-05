provider "aws" {
  region = "${var.aws_region}"
}

module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

module "networking" {
  source = "./networking"
  accessip = "${var.accessip}"
  public_cidrs = "${var.public_cidrs}"
  vpc_cidr = "${var.vpc_cidr}"
}
