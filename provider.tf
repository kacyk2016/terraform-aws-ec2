provider "aws" {
   region = var.workspace_region[terraform.workspace]
  
   assume role {
      role arn = var.workspace_ iam_roles [terraform.workspace]
   }
}
