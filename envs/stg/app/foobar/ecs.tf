resource "aws_ecr_repository" "nginx" {
  name = "example-stg-foobar-nginx"

  tags = {
    Name = "example-stg-foobar-nginx"
  }
}

resource "aws_ecr_lifecycle_policy" "nginx" {
  repository = aws_ecr_repository.nginx.name

  policy = jsonencode({
    "rules" : [
      {
        "rulePriority" : 1,
        "description" : "Hold only 10 images, expire all others",
        "selection" : {
          "tagStatus" : "any",
          "countType" : "imageCountMoreThan",
          "countNumber" : 10
        },
        "action" : {
          "type" : "expire"
        }
      }
    ]
  })

}
