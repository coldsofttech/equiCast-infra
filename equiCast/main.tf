provider "aws" {
  region = var.region
}

# S3 bucket for storing ticker data (tickers.json and ticker_status.json)
module "tickers_bucket" {
  source      = "./modules/s3/bucket"
  bucket_name = var.tickers_bucket_name
  region      = var.region
}

# S3 bucket for storing fx pairs data (fxpairs.json and fxpair_status.json)
module "fxpairs_bucket" {
  source      = "./modules/s3/bucket"
  bucket_name = var.fxpairs_bucket_name
  region      = var.region
}

# S3 bucket for storing ingestion data (for example, stock prices, dividends, fundamentals, etc.)
module "ingestion_bucket" {
  source      = "./modules/s3/bucket"
  bucket_name = var.ingestion_bucket_name
  region      = var.region
}

# CodeArtifact domain for storing packages
module "codeartifact_domain" {
  source      = "./modules/codeartifact/domain"
  domain_name = var.codeartifact_domain_name
  region      = var.region
}

# CodeArtifact for storing pyutils package
module "pyutils_codeartifact" {
  source    = "./modules/codeartifact/repository"
  repo_name = var.pyutils_codeartifact_name
  domain    = module.codeartifact_domain.artifactory_domain_name
  region    = var.region
}

# SSM Parameter for storing Python Utils Latest Version
module "pyutils_version_ssm_parameter" {
  source = "./modules/ssm/parameter"
  name   = var.pyutils_version_ssm_parameter_name
  region = var.region
  value  = var.pyutils_version_ssm_parameter_value
}