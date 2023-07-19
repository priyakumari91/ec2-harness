#!/bin/bash
#Add Harness helm chart repo to your local helm registry


helm repo add harness-delegate https://app.harness.io/storage/harness-download/delegate-helm-chart/
helm repo update harness-delegate

#Now we are ready to install the delegate
helm upgrade -i helm-delegate --namespace harness-delegate-ng --create-namespace \
  harness-delegate/harness-delegate-ng \
  --set delegateName=helm-delegate \
  --set accountId=QQd2ZSZ_Qa6ArFC2ldkXXw \
  --set delegateToken=YTI0MGQyMWQ1NTYyOWVmNWI5YzYxMzM1M2U4MzM5YzU= \
  --set managerEndpoint=https://app.harness.io/gratis \
  --set delegateDockerImage=harness/delegate:23.06.79707 \
  --set replicas=1 --set upgrader.enabled=false
