resource "aws_api_gateway_rest_api" "my_api" {
  name = var.api_name

  tags = var.tags
}

resource "aws_api_gateway_resource" "my_resources" {
  for_each = { for idx, resource in var.resources : idx => resource }

  rest_api_id = aws_api_gateway_rest_api.my_api.id
  parent_id   = aws_api_gateway_rest_api.my_api.root_resource_id
  path_part   = each.value.path
}

resource "aws_api_gateway_method" "my_methods" {
  for_each = { for resource_idx, resource in var.resources : resource_idx => resource.methods }
  
  rest_api_id = aws_api_gateway_rest_api.my_api.id
  resource_id = aws_api_gateway_resource.my_resources[resource_idx].id
  
  method {
    for_each = { for method_idx, method in each.value : method_idx => method }
    http_method  = method.value.http_method
    authorization = method.value.authorization

    integration {
      type        = method.value.integration.type
      uri         = method.value.integration.uri
      http_method = method.value.integration.http_method
    }
  }
}

resource "aws_api_gateway_deployment" "my_deployment" {
  depends_on = [aws_api_gateway_method.my_methods]

  rest_api_id = aws_api_gateway_rest_api.my_api.id
  stage_name  = var.stages[0].name
  description = var.stages[0].deployment_description

  tags = var.tags
}

resource "aws_api_gateway_stage" "my_stage" {
  for_each = { for stage in var.stages : stage.name => stage }

  rest_api_id   = aws_api_gateway_rest_api.my_api.id
  deployment_id = aws_api_gateway_deployment.my_deployment.id
  stage_name    = each.value.name
  description   = each.value.description

  tags = var.tags
}
