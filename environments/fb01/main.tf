provider "aws" {
    region = "eu-west-1"
}

module env {
  # Source module
  source                              = "../../app_infrastructure"
  # s3 module config
  s3_bucket_name                      = "s3-fb01-bucket"
  s3_bucket_tags                      = "${var.s3_bucket_tags}"
  # vpc module config
  vpc_tags                            = "${var.vpc_tags}"
  vpc_cidr_block                      = "10.10.0.0/16"
  # dhcp module config
  dhcp_domain                         = "fb01.doman"
  dhcp_tags                           = "${var.dhcp_tags}"
  # subnet configuration
  publishing_subnet_cidr_block        = ["10.10.10.0/24", "10.10.11.0/24", "10.10.12.0/24"]
  publishing_subnet_tags              = "${var.publishing_subnet_tags}"
  publishing_subnet_availability_zone = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  publishing_ami_id                   = "ami-4cdd453f"
  publishing_instance_type            = "t1.micro"
  publishing_instance_count           = "0"
  publishing_enable_asg               = "0"
  publishing_allow_ssh_traffic_from   = ["10.10.5.0/24"]
  publishing_public_ip_addr           = "true"
  publishing_non_asg_instance_count   = "0"
}
