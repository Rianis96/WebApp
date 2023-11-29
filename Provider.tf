terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.82.0"
    }
  }
}


#connects to azure through app registry (created an app under the registry)
provider "azurerm" {
    subscription_id = "bfacf1e6-429f-4239-828e-784615c2968c"
    tenant_id =  "563820e5-07f0-4dba-b733-bc6cf3a75e5f"
    client_id = "7a864432-438e-4dd2-b101-85c311bdde13"
    # client_secret = var.client_secret
    client_secret = "3Wa8Q~mzn4b-.102N8IRdj2axpdmf-Ody4DgIcvk"
    features {
      
    }

}
