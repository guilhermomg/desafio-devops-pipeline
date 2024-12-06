# main.tf - Arquivo principal de configuração do Terraform

provider "aws" {
  region = "us-east-1"  # Região da AWS
}

module "app_runner" {
  source = "./modules/app_runner"  # Caminho para o módulo que provisiona o AppRunner
  env    = var.env                 # Variável para especificar o ambiente (dev ou prod)
}
