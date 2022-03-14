# Lab 4 : Pipeline GitHub Action avec Terraform

Pré requis : avoir un Service Principal Azure 

génerer un token SAS sur le **container tfstate** du compte de stockage créé dans le Lab 1. Donner les permissions suivantes au token : read, add, create, write, List

Procédure : https://docs.microsoft.com/en-us/azure/cognitive-services/translator/document-translation/create-sas-tokens?tabs=Containers#create-your-tokens

le token SAS doit ressembler à ce genre de chaine :  __sp=racwl&st=2022-03-11T14:00:27Z&se=2022-03-11T22:22:27Z&spr=https&sv=2020-08-04&sr=c&sig=vHXCwdRCoLpiRsLPURDd%2F2t3g8vQRiKCBM8qFrGsML0%3D__

Copier le token SAS dans un secret GITHUB appelé **TOKENSASBACKEND**

Procédure pour créer un secret GitHub : https://github.com/Azure/actions-workflow-samples/blob/master/assets/create-secrets-for-GitHub-workflows.md

Déclencher manuellement le workflow GiHub

Procédure associée : https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

Si le pipeline s'exécute correctement, une coche verte doit apparaitre.

Si c'est le cas, vérifier la création du resource group via le workflow Github avec la commande suivante : **az group list | grep Demo**  
