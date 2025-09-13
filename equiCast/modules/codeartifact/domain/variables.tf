variable "domain_name" {
  description = "The name of the CodeArtifact domain."
  type        = string

  validation {
    condition     = length(var.domain_name) >= 2 && length(var.domain_name) <= 50
    error_message = "The CodeArtifact domain name must be between 2 and 50 characters."
  }
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
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