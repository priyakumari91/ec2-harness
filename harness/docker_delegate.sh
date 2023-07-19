docker run --cpus=1 --memory=2g \
  -e DELEGATE_NAME=docker-delegate \
  -e NEXT_GEN="true" \
  -e DELEGATE_TYPE="DOCKER" \
  -e ACCOUNT_ID=QQd2ZSZ_Qa6ArFC2ldkXXw \
  -e DELEGATE_TOKEN=YTI0MGQyMWQ1NTYyOWVmNWI5YzYxMzM1M2U4MzM5YzU= \
  -e LOG_STREAMING_SERVICE_URL=https://app.harness.io/gratis/log-service/ \
  -e MANAGER_HOST_AND_PORT=https://app.harness.io/gratis harness/delegate:23.06.79707
