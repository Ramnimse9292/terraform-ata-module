module "naming" {
  source        = "../0-tfc-naming"
  resource_type = "variableset"
  application   = var.application
  environment   = var.environment
  region        = var.region
}

resource "null_resource" "variableset" {
  triggers = {
    name = module.naming.name
  }
}
