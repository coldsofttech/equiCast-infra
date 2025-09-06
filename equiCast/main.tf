provider "aws" {
  region = "eu-west-1"
}

# S3 bucket for storing ticker data (tickers.json and ticker_status.json)
module "tickers_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "equicast-tickers"
  region      = "eu-west-1"
}