#############################
# Backend Variables
#############################
variable "region" {
  description = "Name of the AWS region to run in."
  type        = string
}

variable "bucket" {
  description = "The name of the S3 bucket where state will be stored"
  type        = string
}

variable "dynamodb_table" {
  description = "The name of the dynamoDB table used to lock the state"
  type        = string
}

variable "key" {
  description = "The key used for the state file"
  type        = string
}

variable "encrypt" {
  description = "Used to toggle encryption of state bucket"
  type        = bool
}

variable "role_arn" {
  description = "ARN of role to be assumed by backend and provider"
  type        = string
  default     = ""
}

#############################
# API Gateway
#############################
variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "The description of the API Gateway"
  type        = string
  default     = "API Gateway for dist api"
}

#############################
# Authorizer
#############################
variable "auth_ttl" {
  description = "The TTL of cached authorizer results in seconds."
  type        = string
  default     = "300"
}

variable "auth_lambda_state_key" {
  description = "The key of the state bucket for auth lambda"
  type        = string
}