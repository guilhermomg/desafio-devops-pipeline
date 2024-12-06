# main.tf - Módulo para provisionamento do AppRunner

resource "aws_apprunner_service" "service" {
  service_name = "minha-aplicacao-${var.env}"  # Nome do serviço, que inclui o ambiente (dev ou prod)
  
  source_configuration {
    image_repository {
      image_identifier      = "123456789012.dkr.ecr.us-east-1.amazonaws.com/minha-aplicacao:${var.env}"  # Referência à imagem no ECR
      image_repository_type = "ECR"  # Tipo de repositório de imagem (ECR)
    }
  }
}
