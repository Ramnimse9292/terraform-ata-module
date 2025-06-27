resource "null_resource" "assign_team_to_project" {
  triggers = {
    project = var.project_name
    team    = var.team_name
  }

  provisioner "local-exec" {
    command = "echo Assigning team ${var.team_name} to project ${var.project_name}"
  }
}
