module "nginx" {
  source = "../../../modules/ecr"

  name = "example-prod-foobar-nginx"
  hold_count = 5
}