module "project" {
  source      = "./modules/1-tfc-project"
  application = var.application
  environment = var.environment
  region      = var.region
}

module "workspace" {
  source           = "./modules/2-tfc-workspace"
  application      = var.application
  environment      = var.environment
  region           = var.region
  workspace_suffix = var.workspace_suffix
}

module "team" {
  source      = "./modules/3-tfc-team"
  application = var.application
  environment = var.environment
  region      = var.region
}

module "variableset" {
  source      = "./modules/4-tfc-variable-set"
  application = var.application
  environment = var.environment
  region      = var.region
}

# 🔵 Assign Team to Project
module "assign_team_to_project" {
  source       = "./modules/5-tfc-team-access-project"
  project_name = module.project.project_name
  team_name    = module.team.team_name
}

# 🔵 Assign Variable Set to Project
module "assign_varset_to_project" {
  source           = "./modules/6-tfc-variable-set-access-project"
  project_name     = module.project.project_name
  variableset_name = module.variableset.variableset_name
}

