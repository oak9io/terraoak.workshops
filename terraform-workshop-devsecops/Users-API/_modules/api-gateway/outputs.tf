output "apigateway_api_execution_arn" {
  description = "The ARN prefix to be used in an aws_lambda_permission's source_arn attribute or in an aws_iam_policy to authorize access to the @connections API."
  value       = aws_api_gateway_rest_api.user_webinar.execution_arn
}


# output "apigateway_rest_api_id" {
#   description = "The URI of the API"
#   value       = aws_apigateway_api.user_webinar.api_endpoint
# }

output "base_url" {
  description = "The URL to invoke the API pointing to the stage"
  value       = aws_api_gateway_stage.webinar.invoke_url
}
