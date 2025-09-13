resource "aws_ssm_parameter" "this" {
  name        = var.name
  region      = var.region
  type        = var.type
  value       = var.value
  description = var.description
  tier        = var.tier
  key_id      = var.type == "SecureString" ? var.key_id : null
  tags = merge(
    var.tags,
    {
      name        = var.name,
      environment = var.environment,
      application = "equiCast"
    }
  )

  lifecycle {
    ignore_changes = [
      value,  # Ignore changes to the value
    ]
  }
}