output "lambda-invoke-arn" {
  description = "Invocation ARN used by api gateway for triggering lambda a"
  value       = aws_lambda_function.sample-b2b-authorizer_lambda.invoke_arn
}

output "lambda-arn" {
  description = "ARN of Lambda a for reference"
  value       = aws_lambda_function.sample-b2b-authorizer_lambda.arn
}

output "lambda-iam-role" {
  description = "ARN of IAM role created for lambda"
  value       = aws_iam_role.sample-b2b-authorizer_iam_for_lambda.arn
}

output "lambda-iam-role-name" {
  description = "Name of lambda IAM Role"
  value       = aws_iam_role.sample-b2b-authorizer_iam_for_lambda.name
}

output "lambda-name" {
  description = "name of the lambda"
  value       = "sample-b2b-authorizer"
}