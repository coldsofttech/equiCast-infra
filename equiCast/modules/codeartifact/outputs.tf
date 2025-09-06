output "artifactory_domain_name" {
  description = "The name of the CodeArtifact domain."
  value       = aws_codeartifact_domain.this.domain
}

output "artifactory_repo_name" {
  description = "The name of the CodeArtifact repository."
  value       = aws_codeartifact_repository.this.repository
}