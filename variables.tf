
variable "project_name" {
  description = "Nombre del proyecto"
  type        = string

  validation {
    condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
    error_message = "El nombre debe tener entre 5 y 20 caracteres."
  }
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "El ambiente debe ser dev, qa o prod."
  }
}

variable "location" {
  description = "Region de Azure"
  type        = string
  default     = "centralus"
}

variable "vnet_address_space" {
  description = "Rango de direcciones de la red virtual"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Etiquetas de los recursos"
  type        = map(string)
  default = {
    managed_by = "Terraform"
  }
}

variable "subscription_id" {
  description = "Identificador de la suscripcion de Azure"
  type        = string
  sensitive   = true
}