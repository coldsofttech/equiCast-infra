output "ssm_parameter_name" {
  description = "The name of the SSM Parameter"
  value       = aws_ssm_parameter.this.name
}

output "ssm_parameter_arn" {
  description = "The ARN of the SSM Parameter"
  value       = aws_ssm_parameter.this.arn
}

output "ssm_parameter_version" {
  description = "The version of the SSM Parameter"
  value       = aws_ssm_parameter.this.version
}