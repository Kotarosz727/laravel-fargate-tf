module "nginx" {
  source = "../../../modules/ecr"

  name = "${local.name_prefix}-${local.service_name}-nginx"
  hold_count = 5
}

module "php" {
  source = "../../../modules/ecr"

  name = "${local.name_prefix}-${local.service_name}-php"
  hold_count = 5
}