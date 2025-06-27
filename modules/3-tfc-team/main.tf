module "naming" {
  source        = "../0-tfc-naming"
  resource_type = "team"
  application   = var.application
  environment   = var.environment
  region        = var.region
}

resource "null_resource" "team" {
  triggers = {
    name = module.naming.name
  }
}
