module "s3b" {
  #source  = "app.terraform.io/dimpy_test/s3b/aws"
  #version = "1.0.0"
  # insert required variables here
  source = "git@github.com:dimpz1804/terraform-aws-s3e.git?ref=v1.0.0"
  environment = "dev"
  app_name = "dimpytestdemo"
}

terraform {
  cloud {
    organization = "dimpy_test"
    workspaces {
      name = "git-module-download-testing"
    }
  }
}
