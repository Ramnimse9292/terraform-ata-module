variable "application" {
  description = "Application or workload name"
  type        = string
}

variable "environment" {
  description = "Environment type (dev, nonprd, prd)"
  type        = string
}

variable "region" {
  description = "Deployment region (e.g. us-east, ap-south)"
  type        = string
}

variable "workspace_suffix" {
  description = "Workspace suffix for workspace naming (ex: prd, nonprd)"
  type        = string
}
