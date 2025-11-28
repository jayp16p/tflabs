terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.8.3"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "example"
  visibility = "private"
  }