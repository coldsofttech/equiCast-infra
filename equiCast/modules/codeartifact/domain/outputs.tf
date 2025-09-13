output "artifactory_domain_name" {
  description = "The name of the CodeArtifact domain."
  value       = aws_codeartifact_domain.this.domain
}

output "artifactory_domain_arn" {
  description = "The ARN of the CodeArtifact domain."
  value       = aws_codeartifact_domain.this.arn
}