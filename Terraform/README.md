# Exercices d'Infrastructure as Code avec Terraform

Ceci est le repertoire avec le code Terraform pour les exercices d'Infrastructure as Code

- Lab 1 : Codage et déploiement de ressources simples (resource group, compte de stockage)
    --> **répertoire StorageAccount**
- Lab 2 : Codage et déploiement d'une Azure Container Registry avec stockage du TFState dans un Backend Azure Storage
    --> **répertoire AzureContainerRegistry**
- Lab 3 : Déploiement d'un cluster AKS et explication du code associé
    --> **répertoire ClusterAKS**
- Lab 4 : GitHub Workflow pour déployer dans Azure avec terraform
    --> **répertoire Pipeline-GH**

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


**Créer un Service Principal dans Azure**

az login

az account list -o table

Récupérer l'ID de la subscription Azure puis exécuter la commande suivante :

az ad sp create-for-rbac --name "votrenom-demo-githubaction2022" --role "Contributor" --scopes /subscriptions/METTRE_ICI_L_ID_DE_LA_SUBSCRIPTION --sdk-auth -o jsonc

Récupérer le output de la commande et le sauvegarder temporairement dans un fichier 

# A faire en fin de journée

Nettoyage des ressources en supprimant les resource group ou en exécutant **terraform destroy** dans les différents répertoires

