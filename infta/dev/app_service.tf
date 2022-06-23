resource "azurerm_service_plan" "asp" {
  name                = "asp-example"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "S2"
  tags = {
    "env" = 'dev
    "app" = 'my app' 
    "location" = 'west europe'
  }
}

resource "azurerm_app_service" "app_service_example" {
  name                = "as_example}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  app_service_plan_id = azurerm_service_plan.asp.id

  tags = {
    "env" = 'dev'
    "app" = 'my app' 
    "location" = 'west europe'
  }
