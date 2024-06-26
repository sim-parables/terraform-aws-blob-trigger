## ---------------------------------------------------------------------------------------------------------------------
## MODULE PARAMETERS
## These variables are expected to be passed in by the operator
## ---------------------------------------------------------------------------------------------------------------------

variable "bucket_name" {
  type        = string
  description = "AWS Storage Bucket Name"
}

variable "kms_key_arn" {
  type        = string
  description = "KMS Encryption Key ARN"
}

## ---------------------------------------------------------------------------------------------------------------------
## OPTIONAL PARAMETERS
## These variables have defaults and may be overridden
## ---------------------------------------------------------------------------------------------------------------------

variable "kms_retention_days" {
  type        = number
  description = "KMS Encryption Key Retention Window in Days"
  default     = 1
}

variable "kms_encryption_algorithm" {
  type        = string
  description = "S3 KMS Encryption Key Algorithm"
  default     = "aws:kms"
}