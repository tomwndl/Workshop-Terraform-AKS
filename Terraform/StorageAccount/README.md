# Industrialisation des déploiements dans Azure

# Description
L'objectif de ce workshop est de découvrir l'industrialisation des déploiements dans Microsoft Azure avec l'utilisation d'Infrastructure as Code (Terraform) et de workflows GitHub. 

La plateforme déployée sera constituée :
- d'un cluster Azure Kubernetes Service
- d'une Azure Container Registry
- d'un compte de Stockage Azure
- le tout dans un Resource Group Azure


# Pré requis

Repo Github pour les étudiants : https://github.com/FrenchBarbusCorp/Workshop-Terraform-AKS 

Avoir un environnement Bash 
- Pour ceux sous Windows 10/11 : Installation WSL2 https://docs.microsoft.com/en-us/windows/wsl/install

Avoir les outils suivants : 
- Git
- Azure CLI -> https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt (test: ~$  az Login)
- terraform -> https://learn.hashicorp.com/tutorials/terraform/install-cli (test : ~$ terraform)
- Visual Studio Code -> https://code.visualstudio.com
- Extension Terraform pour VSCode -> Depuis le bash, executez « code . » et aller chercher l’extension « Hashicorp Terraform »


# Lab 1 : Resource Group et Storage Account
Aller dans le répertoire Terraform/StorageAccount

Editer les 4 fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Une fois les fichiers modifés, placez vous dans votre bash dans le répertoire Terraform/Storage et exécuter la commande **terraform init** 

Cette commande va télécharger le provider azurerm (dans cet exercice)

exécutez **ls -lisa**

un répertoire .terraform et un fichier .terraform.lock.hcl ont été créés dans le répertoire

exécutez **terraform plan**

Si tout se passe bien, cela doit afficher

_Plan: 3 to add, 0 to change, 0 to destroy._ 

exécutez **terraform apply** 

le message suivant va être affiché :

*Plan: 3 to add, 0 to change, 0 to destroy.
 Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  _Enter a value:

  saisir **yes**

  Une fois le déploiement terminé. 

  exécutez **ls -lisa** et vérifier la présence de 2 nouveaux fichiers : **terraform.tfstate** et **terraform.tfstate.backup**

  exécutez **terraform show** pour voir le TFState
  



# Lab 2 : Azure Container Registry avec TFState dans un Backend Azure Storage

Aller dans le répertoire Terraform/AzureContainerRegistry

Editer les 3 fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Une fois les fichiers modifés, placez vous dans votre bash dans le répertoire Terraform/Storage et exécuter la commande **terraform init** 

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

  exécuter **terraform show** pour voir le TFState


# Lab 3 : Azure Kubernetes Service





# Lab 4 : Pipeline GitHub Action avec Terraform

pré requis : avoir un Service Principal Azure 

génerer un token SAS sur le **container tfstate** du compte de stockage créé dans le Lab 1. Donner les permissions suivantes au token : read, add, create, write, List

Procédure : https://docs.microsoft.com/en-us/azure/cognitive-services/translator/document-translation/create-sas-tokens?tabs=Containers#create-your-tokens

le token SAS doit ressembler à ce genre de chaine :  __sp=racwl&st=2022-03-11T14:00:27Z&se=2022-03-11T22:22:27Z&spr=https&sv=2020-08-04&sr=c&sig=vHXCwdRCoLpiRsLPURDd%2F2t3g8vQRiKCBM8qFrGsML0%3D__

Copier le token SAS dans un secret GITHUB appelé **TOKENSASBACKEND**

Procédure pour créer un secret GitHub : https://github.com/Azure/actions-workflow-samples/blob/master/assets/create-secrets-for-GitHub-workflows.md

Déclencher manuellement le workflow GiHub

Procédure associée : https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

Si le pipeline s'exécute correctement, une coche verte doit apparaitre.

Si c'est le cas, vérifier la création du resource group via le workflow Github avec la commande suivante : **az group list | grep Demo**  


# A faire en fin de journée

Nettoyage des ressources en supprimant les resource group ou en exécutant **terraform destroy** dans les différents répertoires