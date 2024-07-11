output "codepipeline_id" {
  description = "ID of the CodePipeline"
  value       = aws_codepipeline.pipeline.id
}

output "codepipeline_arn" {
  description = "ARN of the CodePipeline"
  value       = aws_codepipeline.pipeline.arn
}

output "codepipeline_name" {
  description = "Name of the CodePipeline"
  value       = aws_codepipeline.pipeline.name
}
