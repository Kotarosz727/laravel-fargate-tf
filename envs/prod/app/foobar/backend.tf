terraform {
  backend "s3" {
    bucket = "my-managing-terraform-state"
    key    = "example/prod/app/foobar"
    region = "ap-northeast-1"
  }
}