output "rest_api_id" {
  description = "ID of the top level api on api gateway"
  value       = module.api_gateway.rest_api_id
}

output "gateway_execution_arn" {
  description = "aws internal invocation ARN of gateway"
  value       = module.api_gateway.gateway_execution_arn
}

output "api_validator" {
  description = "ID of the request validator for the api"
  value       = aws_api_gateway_request_validator.api_validator.id
}

output "root_resource_id" {
  description = "ID of the top level resource on the api gateway"
  value       = module.api_gateway_root_resource.resource_id
}

output "authorizer_id" {
  description = "ID of the api gateway authorizer"
  value       = module.api_gateway_authorizer.authorizer_id
}