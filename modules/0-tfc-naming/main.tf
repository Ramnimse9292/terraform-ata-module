locals {
  name_format = "${var.resource_type}-${var.application}-${var.environment}-${var.region}"
}

# output "generated_name" {
#   value = local.name_format
# }

