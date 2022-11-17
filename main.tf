terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "gh_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token         = var.gh_token
  owner         = "la-catalog"
  read_delay_ms = 1000
}

data "github_repositories" "python_api" {
  query = "org:la-catalog topic:python topic:api"
}

data "github_repositories" "python_cron_job" {
  query = "org:la-catalog topic:python topic:cronjob"
}

data "github_repositories" "python_deployment" {
  query = "org:la-catalog topic:python topic:deployment"
}

data "github_repositories" "python_package" {
  query = "org:la-catalog topic:python topic:package"
}

data "github_repositories" "terraform" {
  query = "org:la-catalog topic:terraform"
}