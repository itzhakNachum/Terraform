resource "azurerm_resource_group" "rg" {
  name     = "rg-example"
  location = 'west europe'
  tags = {
    "Environment" = dev
}
