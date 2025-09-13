variable "repo_name" {
  description = "The name of the CodeArtifact repository."
  type        = string

  validation {
    condition     = length(var.repo_name) >= 2 && length(var.repo_name) <= 100
    error_message = "The CodeArtifact repository name must be between 2 and 100 characters."
  }
}

variable "domain" {
  description = "The name of the CodeArtifact domain."
  type        = string
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "description" {
  description = "The description of the CodeArtfifact repository."
  type        = string
  default     = null
}

variable "environment" {
  description = "The value for the 'environment' tag"
  type        = string
  default     = "production"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}