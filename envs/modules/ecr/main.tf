resource "aws_ecr_repository" "this" {
  name = var.name

  tags = {
    Name = var.name
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  repository = aws_ecr_repository.this.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep last ${var.hold_count} images",
            "selection": {
                "tagStatus": "any",
                "countType": "imageCountMoreThan",
                "countNumber": ${var.hold_count}
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}