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
  owner = "SteelecoSystems"
}

resource "github_actions_secret" "test_secret" {
  secret_name = "secret_name"
  plaintext_value = "evsmdyslrnlrxavi"
  repository = "tf-test"
}

resource "github_actions_secret" "test_secret_2" {
  secret_name = "secret_evsmdyslrnlrxavi"
  plaintext_value = "abc"
  repository = "tf-test"
}

