resource "aws_ssm_parameter" "this" {
  name        = var.name
  region      = var.region
  type        = var.type
  value       = var.value != null ? var.value : ""
  description = var.description
  tier        = var.tier
  key_id      = var.key_id
  tags = merge(
    var.tags,
    {
      name        = var.name,
      environment = var.environment,
      application = "equiCast"
    }
  )
}