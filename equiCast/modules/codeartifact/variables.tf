variable "domain_name" {
  description = "The name of the CodeArtifact domain."
  type        = string
}

variable "repo_name" {
  description = "The name of the CodeArtifact repository."
  type        = string
}

variable "region" {
  description = "AWS region code"
  type        = string
  default     = "eu-west-1"
}

variable "description" {
  description = "The description of the CodeArtfifact repository."
  type        = string
  default     = null
}

variable "environment" {
  description = "Value for the environment tag"
  type        = string
  default     = "production"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}