## INSERER ICI LE CODE POUR FAIRE UNE Azure Container Registry avec un Role ACR PUlL pour le cluster AKS

# Indices : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
#                prendre la SKU Basic
#           https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
#           https://docs.microsoft.com/en-us/azure/container-registry/container-registry-roles?tabs=azure-cli 
#                  scope                = l'Azure Container Registry
#                  role_definition_name = "ACR Reader"
#                  principal_id         = la system managed identity du cluster AKS