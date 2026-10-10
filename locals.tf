
locals {
  resource_group_name  = "${var.project_name}-${var.environment}-rg"
  virtual_network_name = "${var.project_name}-${var.environment}-vnet"

  common_tags = merge(var.tags, {
    project     = var.project_name
    environment = var.environment
    managed_by  = "Terraform"
  })
}