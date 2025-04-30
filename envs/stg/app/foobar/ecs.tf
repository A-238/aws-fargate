resource "aws_ecr_repository" "nginx" {
  name = "example-stg-foobar-nginx"

  tags = {
    Name = "example-stg-foobar-nginx"
  }
}