terraform {
  cloud {
    organization = "FusionIT"

    workspaces {
      name = "gh-action-demo-anne"
    }
  }
}
