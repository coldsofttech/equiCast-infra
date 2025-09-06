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

resource "aws_codeartifact_repository" "this" {
  repository  = var.repo_name
  domain      = aws_codeartifact_domain.this.domain
  region      = var.region
  description = var.description
  tags = merge(
    var.tags,
    {
      name        = var.repo_name
      environment = var.environment
      application = "equiCast"
    }
  )
}