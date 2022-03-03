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
