module "naming" {
  source        = "../0-tfc-naming"
  resource_type = "project"
  application   = var.application
  environment   = var.environment
  region        = var.region
}

resource "null_resource" "project" {
  triggers = {
    name = module.naming.name
  }
}
