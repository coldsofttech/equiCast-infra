variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "tickers_bucket_name" {
  description = "The name for the 'tickers_bucket'"
  type        = string
}

variable "fxpairs_bucket_name" {
  description = "The name for the 'fxpairs_bucket'"
  type        = string
}

variable "ingestion_bucket_name" {
  description = "The name for the 'ingestion_bucket'"
  type        = string
}

variable "codeartifact_domain_name" {
  description = "The name for the CodeArtifact domain"
  type        = string
}

variable "pyutils_codeartifact_name" {
  description = "The name for the Python Utils CodeArtifact repository"
  type        = string
}

variable "pyutils_version_ssm_parameter_name" {
  description = "The SSM parameter to store version of Python Utils"
  type        = string
}

variable "pyutils_version_ssm_parameter_value" {
  description = "The value for the Python Utils Version SSM parameter"
  type        = string
  default     = "v0.0.0"
}

variable "awsutils_version_ssm_parameter_name" {
  description = "The SSM parameter to store version of AWS Utils"
  type        = string
}

variable "awsutils_version_ssm_parameter_value" {
  description = "The value for the AWS Utils Version SSM parameter"
  type        = string
  default     = "v0.0.0"
}