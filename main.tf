terraform {
  required_version = ">= 1.5.0"
}

locals {
  project_name  = "project-11-branching-policy"
  blocked_ports = [22, 3389]
}

resource "null_resource" "infra_baseline" {
  triggers = {
    project = local.project_name
    policy  = "no-port-22-or-3389"
  }
}
