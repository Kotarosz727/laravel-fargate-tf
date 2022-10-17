resource "aws_ecr_repository" "nginx" {
  name = "nginx"

  tags = {
    Name = "nginx-created-20221017"
  }
}