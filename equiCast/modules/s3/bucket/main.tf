resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags = merge(
    var.tags,
    {
      name        = var.bucket_name,
      environment = var.environment,
      application = "equiCast"
    }
  )
  region = var.region

  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      tags,
    ]
  }
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = var.block_public_access
  block_public_policy     = var.block_public_access
  ignore_public_acls      = var.block_public_access
  restrict_public_buckets = var.block_public_access
}