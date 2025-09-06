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