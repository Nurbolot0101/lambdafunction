variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "Runtime for the Lambda function"
  type        = string
}

variable "handler" {
  description = "Handler for the Lambda function"
  type        = string
}

variable "role_arn" {
  description = "ARN of the IAM role for Lambda"
  type        = string
}

variable "source_path" {
  description = "Path to the deployment package for Lambda"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for Lambda function"
  type        = map(string)
  default     = {}
}

variable "api_gateway_arn" {
  description = "Optional ARN of the API Gateway for invoking this Lambda"
  type        = string
  default     = ""
}

variable "source_path" {
  description = "Path to the Lambda function zip file"
  type        = string
}
