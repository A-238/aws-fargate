terraform {
  backend "s3" {
    bucket = "aws-fargate-445256803521-tfstate"
    key    = "example/stg/cicd/app_foobar.tfstate"
    region = "ap-northeast-1"
  }
}
