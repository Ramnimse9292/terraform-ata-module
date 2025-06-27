# Resource prefix mapping
locals {
  resource_prefix = {
    project      = "prj"
    workspace    = "ws"
    team         = "team"
    variableset  = "varset"
  }

  # Individual naming patterns per resource type
  project_name      = "${local.resource_prefix["project"]}-${var.application}-${var.environment}-${var.region}"
  workspace_name    = "${local.resource_prefix["workspace"]}-${var.application}-${var.environment}-${var.region}-${var.workspace_suffix}"
  team_name         = "${local.resource_prefix["team"]}-${var.application}-${var.environment}-${var.region}"
  variableset_name  = "${local.resource_prefix["variableset"]}-${var.application}-${var.environment}-${var.region}"

  # Dynamic selector for resource name based on type
  generated_name = (
    var.resource_type == "project" ? local.project_name :
    var.resource_type == "workspace" ? local.workspace_name :
    var.resource_type == "team" ? local.team_name :
    var.resource_type == "variableset" ? local.variableset_name :
    "invalid-resource-type"
  )
}
