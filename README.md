# Terraform Docker Environment

## Command

#### format
$ docker-compose run --rm terraform fmt --recursive

#### init
###### app/foobar
$ docker-compose run --rm terraform -chdir=envs/stg/app/foobar init