module "nginx" {
  source = "../../../modules/ecr"

  name = "example-prod-foobar-nginx"
  hold_count = 5
}

module "php" {
  source = "../../../modules/ecr"

  name = "example-prod-foobar-php"
  hold_count = 5
}