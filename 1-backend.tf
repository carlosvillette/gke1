# https://www.terraform.io/language/settings/backends/gcs
terraform {
    
  backend "gcs" {
    bucket = "gcs-bucket-villette"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
