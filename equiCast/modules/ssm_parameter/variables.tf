variable "name" {
  description = "The full path name of the SSM Parameter (e.g., /app/prod/version)"
  type        = string
}

variable "region" {
  description = "AWS region code"
  type        = string
  default     = "eu-west-1"
}

variable "type" {
  description = "The type of the parameter. Valid types: String, StringList, SecureString"
  type        = string
  default     = "String"
}

variable "value" {
  description = "The value of the parameter"
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the parameter"
  type        = string
  default     = null
}

variable "tier" {
  description = "The tier for the parameter: Standard or Advanced"
  type        = string
  default     = "Standard"
}

variable "key_id" {
  description = "KMS Key ID or ARN for SecureString. Default is AWS-managed Key"
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