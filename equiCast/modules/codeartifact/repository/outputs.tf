output "artifactory_repo_name" {
  description = "The name of the CodeArtifact repository."
  value       = aws_codeartifact_repository.this.id
}

output "artifactory_repo_arn" {
  description = "The ARN of the CodeArtifact repository."
  value       = aws_codeartifact_repository.this.arn
}