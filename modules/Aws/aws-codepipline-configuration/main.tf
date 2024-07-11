resource "aws_codepipeline" "pipeline" {
  name     = var.pipeline_name
  role_arn = var.role_arn

  artifact_store {
    location = var.artifact_store_location
    type     = var.artifact_store_type

    encryption_key {
      id   = var.encryption_key_id
      type = var.encryption_key_type
    }
  }

  stage {
    name = var.source_stage_name

    action {
      name             = var.source_action_name
      category         = var.source_category
      owner            = "AWS"
      provider         = var.source_provider
      version          = var.source_version
      output_artifacts = [var.source_output_artifact]

      configuration = var.source_configuration
    }
  }

  stage {
    name = var.deploy_stage_name

    action {
      name             = var.deploy_action_name
      category         = var.deploy_category
      owner            = "AWS"
      provider         = var.deploy_provider
      version          = var.deploy_version
      input_artifacts  = [var.deploy_input_artifact]

      configuration = var.deploy_configuration
    }
  }

  tags = var.tags
}
