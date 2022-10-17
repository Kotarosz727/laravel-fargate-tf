# foobarディレクトリでシンボリックリンクを貼る。（ln -fs ../../provider.tf provider.tf）
provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env    = "prod"
      System = "example"
    }
  }
}