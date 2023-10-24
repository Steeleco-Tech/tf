terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.38"
    }
  }
}

# Configure the GitHub Provider
provider "github" {

#  app_auth {
#    id              = "371766"
#    installation_id = "40392571"
#    pem_file        = file("~/Downloads/steelecosystems.2023-09-24.private-key.pem")
#  }
#  owner = "SteelecoSystems"
}

resource "github_actions_organization_variable" "test_variable" {
  variable_name = "test_variable"
  visibility  = "private"
  value = "hello world"
}

resource "github_actions_organization_secret" "test_secret" {
  secret_name = "test_secret"
  visibility  = "private"
  plaintext_value = "asd"
}
