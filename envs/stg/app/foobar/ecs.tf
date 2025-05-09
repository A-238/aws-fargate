module "nginx" {
  source = "../../../../modules/ecr"
  name   = "${local.system_name}-${local.environment}-${local.service_name}-nginx"
}

module "php" {
  source = "../../../../modules/ecr"
  name   = "${local.system_name}-${local.environment}-${local.service_name}-php"
}