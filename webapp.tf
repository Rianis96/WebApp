resource "azurerm_service_plan" "companyplan" {
  name                = "companyplan"
  location            = local.location
  resource_group_name = local.resource_group_name
  os_type = "Windows"
  sku_name = "B1"

depends_on = [ azurerm_resource_group.appgrp ]
}


resource "azurerm_windows_web_app" "companyapp1000000" {
  name                = "companyapp1000000"
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.companyplan.id

  site_config {
    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v6.0"
    }
  }
  depends_on = [ 
    azurerm_resource_group.appgrp 
    ]
}


resource "azurerm_app_service_source_control" "appservice_sourcecontrol" {
  app_id   = azurerm_windows_web_app.companyapp1000000.id
  repo_url = "https://github.com/Rianis96/WebApp"
  branch   = "master"
  use_manual_integration =  true
}