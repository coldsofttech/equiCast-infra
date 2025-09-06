terraform {
    required_version = ">= 1.3.0"
    backend "s3" {
        bucket = "equicast-terraform-state"
        key = "global/s3/terraform.tfstate"
        region = "eu-west-1"
        encrypt = true
    }
    required_providers {
        aws = {
            source = "hashicorp/aws",
            version = ">= 4.0.0"
        }
    }
}