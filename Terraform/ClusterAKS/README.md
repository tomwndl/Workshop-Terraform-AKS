# Lab 3 : Azure Kubernetes Service avec TFState dans un Backend Azure Storage Account

Objectifs : 
- Déployer un cluster Azure Kubernetes Service dans le ressource group créé dans le Lab 1
- Donner la permission de télécharger des images de conteneurs depuis l'Azure Container Registry créée dans le Lab 2

Aller dans le répertoire Terraform/ClusterAKS

Editer les fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Optionnel : éditer le fichier *.tfvars pour définir les valeurs de vos variables

Astuce : Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Une fois les fichiers modifiés, placez vous dans votre bash dans le répertoire Terraform/AzureContainerRegistry et exécuter la commande **terraform init** 

Cette commande va télécharger le provider azurerm (dans cet exercice) mais aussi initaliser le backend pour le TFSTATE

Exécuter **terraform plan**

Exécuter **terraform apply** 

