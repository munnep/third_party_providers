provider "aws" {
}

provider "grafana" {
}

terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "1.17.0"
    }
  }
}
