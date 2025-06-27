module "naming" {
  source           = "../0-tfc-naming"
  resource_type    = "workspace"
  application      = var.application
  environment      = var.environment
  region           = var.region
  workspace_suffix = var.workspace_suffix
}

resource "null_resource" "workspace" {
  triggers = {
    name = module.naming.name
  }
}
