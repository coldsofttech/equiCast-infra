resource "aws_codeartifact_domain" "this" {
  domain = var.domain_name
  region = var.region
  tags = merge(
    var.tags,
    {
      name        = var.domain_name
      environment = var.environment
      application = "equiCast"
    }
  )
}