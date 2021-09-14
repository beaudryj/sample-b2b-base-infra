module "api_gateway" {
  source = "git@github.com:beaudryj/tf_apigw.git"

  # API Gateway
  api_name        = var.api_name
  api_description = var.api_description
}

resource "aws_api_gateway_request_validator" "api_validator" {
  name                        = "${var.api_name}-validator"
  rest_api_id                 = module.api_gateway.rest_api_id
  validate_request_body       = true
  validate_request_parameters = true
}

module "api_gateway_root_resource" {
  source = "git@github.com:beaudryj/tf_apigw_resource.git"

  # Resource info
  rest_api_id           = module.api_gateway.rest_api_id
  new_resource_toggle   = "false"
  existing_resourcepath = "/"
}

module "api_gateway_authorizer" {
  source = "git@github.com:beaudryj/tf_apigw_authorizer.git"

  rest_api_id = module.api_gateway.rest_api_id
  # Authorizer
  authorizer_name      = data.terraform_remote_state.auth_lambda.outputs.lambda-name
  invocation_role_name = data.terraform_remote_state.auth_lambda.outputs.lambda-iam-role-name
  auth_lambda_name     = data.terraform_remote_state.auth_lambda.outputs.lambda-name
  auth_ttl             = var.auth_ttl
  # auth regex is false positive on being a potential password
  #tfsec:ignore:GEN003
  auth_token_regex = "^Bearer [-0-9a-zA-z\\.]*$"
}
