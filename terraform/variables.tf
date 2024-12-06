# variables.tf - Definição das variáveis de ambiente

variable "env" {
  description = "Ambiente de implantação (dev ou prod)"
  type        = string
  default     = "dev"  # Valor padrão para dev, pode ser alterado durante o uso
}
