# Lab 2 : Azure Container Registry avec TFState dans un Backend Azure Storage Account

Aller dans le répertoire Terraform/AzureContainerRegistry

Editer les 3 fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Important : dans le fichier 3-variables.tf  mettre un nom unique pour votre Azure Container Registry

Une fois les fichiers modifés, placez vous dans votre bash dans le répertoire Terraform/AzureContainerRegistry et exécuter la commande **terraform init** 

Cette commande va télécharger le provider azurerm (dans cet exercice) mais aussi initaliser le backend pour le TFSTATE

*Initializing the backend...

*Successfully configured the backend "azurerm"! Terraform will automatically
use this backend unless the backend configuration changes.

exécuter **ls -lisa**

un répertoire .terraform et un fichier .terraform.lock.hcl ont été créés dans le répertoire

exécuter **terraform plan**

Si tout se passe bien, cela doit afficher

_Plan: 1 to add, 0 to change, 0 to destroy._ 

exécuter **terraform apply** 

le message suivant va être affiché :

*Plan: 1 to add, 0 to change, 0 to destroy.
 Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  _Enter a value:

  saisir **yes**

  Une fois le déploiement terminé. 

  exécuter **ls -lisa** et vérifier la _NON présence_  de 2 nouveaux fichiers : **terraform.tfstate** et **terraform.tfstate.backup**. En effet le tfstate est désormais stocké dans le compte de stockage Azure

  Vérifier la présence du fichier **acr.terraform.tfstate** dans le container tfstate du compte de stockage Azure

  Exécuter **terraform show** pour voir le TFState
