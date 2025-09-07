provider "aws" {
  region = "eu-west-1"
}

# S3 bucket for storing ticker data (tickers.json and ticker_status.json)
module "tickers_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "equicast-tickers"
  region      = "eu-west-1"
}

# S3 bucket for storing fx pairs data (fxpairs.json and fxpair_status.json)
module "fxpairs_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "equicast-fxpairs"
  region      = "eu-west-1"
}

# S3 bucket for storing ingestion data (for example, stock prices, dividends, fundamentals, etc.)
module "ingestion_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "equicast-ingestion"
  region      = "eu-west-1"
}

# CodeArtifact for storing pyutils package
module "pyutils_codeartifact" {
  source      = "./modules/codeartifact"
  domain_name = "equicast-pyutils-domain"
  repo_name   = "equicast-pyutils-repo"
  region      = "eu-west-1"
}

# SSM Parameter for storing Python Utils Latest Version
module "pyutils_version_ssm_parameter" {
  source = "./modules/ssm_parameter"
  name   = "/equicast/pyutils/version"
  region = "eu-west-1"
}