terraform {
  backend "s3" {
    bucket = "my-managing-terraform-state"
    key    = "example/prod/cicd/foobar"
    region = "ap-northeast-1"
  }
}