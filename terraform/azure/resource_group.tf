resource "azurerm_resource_group" "example" {
  name     = "terragoat-${var.environment}"
  location = var.location
  tags = {
    git_commit           = "5c6b5d60a8aa63a5d37e60f15185d13a967f0542"
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = "2021-05-02 10:06:10"
    git_last_modified_by = "nimrodkor@users.noreply.github.com"
    git_modifiers        = "nimrodkor"
    git_org              = "shaharsa"
    git_repo             = "terragoat"
    yor_trace            = "80b3b0ca-e0d8-4266-8a1f-12c71afd7e18"
    yor_name             = "example"
  }
}