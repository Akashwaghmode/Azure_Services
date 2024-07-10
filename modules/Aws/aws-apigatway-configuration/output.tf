output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.my_api.id
}

output "api_invoke_url" {
  description = "The invoke URL of the API Gateway"
  value       = aws_api_gateway_stage.my_stage.*.invoke_url
}
