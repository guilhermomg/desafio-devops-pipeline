# outputs.tf - Definição das saídas de recursos provisionados

output "app_runner_url" {
  description = "URL do serviço AWS AppRunner"
  value       = aws_apprunner_service.service.url
}
