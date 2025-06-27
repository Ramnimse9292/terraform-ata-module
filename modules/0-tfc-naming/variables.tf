variable "resource_type" {
  description = "Type of the Terraform Cloud resource (project, workspace, team, variableset)"
  type        = string
}

variable "application" {
  description = "Application or workload name"
  type        = string
}

variable "environment" {
  description = "Environment type (dev, nonprd, prd)"
  type        = string
}

variable "region" {
  description = "Deployment region (ex: us-east, ap-south)"
  type        = string
}

# Workspace suffix is only required if resource_type is 'workspace'
variable "workspace_suffix" {
  description = "Workspace suffix for workspace naming (ex: prd, nonprd)"
  type        = string
  default     = ""
}
