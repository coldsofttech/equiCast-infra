resource "aws_codeartifact_repository" "this" {
  repository  = var.repo_name
  domain      = var.domain
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