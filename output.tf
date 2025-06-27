# Output: Project Name
output "project_name" {
  description = "The generated project name from the project module"
  value       = module.project.project_name
}

# Output: Workspace Name
output "workspace_name" {
  description = "The generated workspace name from the workspace module"
  value       = module.workspace.workspace_name
}

# Output: Team Name
output "team_name" {
  description = "The generated team name from the team module"
  value       = module.team.team_name
}

# Output: Variable Set Name
output "variableset_name" {
  description = "The generated variable set name from the variableset module"
  value       = module.variableset.variableset_name
}
