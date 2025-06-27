resource "null_resource" "assign_varset_to_project" {
  triggers = {
    project = var.project_name
    varset  = var.variableset_name
  }

  provisioner "local-exec" {
    command = "echo Assigning variable set ${var.variableset_name} to project ${var.project_name}"
  }
}
