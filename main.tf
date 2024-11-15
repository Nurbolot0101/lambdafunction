resource "aws_lambda_function" "this" {
  function_name = var.function_name
  runtime       = var.runtime
  handler       = var.handler
  role          = var.role_arn

  filename      = var.source_path

  environment {
    variables = var.environment_variables
  }
}

resource "aws_lambda_permission" "allow_api_gateway" {
  count = var.api_gateway_arn != "" ? 1 : 0

  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.this.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "arn:aws:execute-api:us-east-1:211125573612:5dj3h1cbk4/*"
}

