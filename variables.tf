variable "name" {
  type        = string
  description = "Name of the dynamodb table to create"
}
variable "kms_arn" {
  type        = string
  description = "KMS Key to use"
}
variable "hash_key" {
  type        = string
  description = "Default hashkey"
}
variable "range_key" {
  type        = string
  description = "Default rangekey"
  default     = null
}
variable "attributes" {
  type        = map(string)
  description = "List of all attributes to include in the table"
}
variable "billing_mode" {
  type        = string
  default     = "PROVISIONED"
  description = "Billing mode for Dynamodb"
}
variable "read_capacity" {
  type        = number
  default     = 5
  description = "Read capacity if BILLING_MODE is provisioned"
}
variable "write_capacity" {
  type        = number
  default     = 5
  description = "Write capacity if BILLING_MODE is provisioned"
}
variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default environmental context"
}
