module "standard" {
  source                = "./module"
  aws_access_key        = var.aws_access_key
  aws_secret_key        = var.aws_secret_key
  aws_key_pair          = var.aws_key_pair
  aws_region            = "us-west-1"
  aws_domain_name       = "kasm.iworksometimes.com"
  project_name          = "kasm"
  num_agents            = "1"
  num_webapps           = "1"



  agent_instance_type   = "t3.medium"
  webapp_instance_type  = "t3.small"
  db_instance_type      = "t3.small"
  ec2_ami               = "ami-0747bdcabd34c712a"


  ssh_access_cidr        = "0.0.0.0/0"
  database_password     = var.database_password
  redis_password        = var.redis_password
  user_password         = var.user_password
  admin_password        = var.admin_password
  manager_token         = var.manager_token
  zone_name             = "default"
  kasm_build            = "https://kasm-static-content.s3.amazonaws.com/kasm_release_1.9.0.077388.tar.gz"
}


