module "delegate" {
  source = "harness/harness-delegate/kubernetes"
  version = "0.1.7"

  account_id = "QQd2ZSZ_Qa6ArFC2ldkXXw"
  delegate_token = "YTI0MGQyMWQ1NTYyOWVmNWI5YzYxMzM1M2U4MzM5YzU="
  delegate_name = "terraform-delegate"
  deploy_mode = "KUBERNETES"
  namespace = "harness-delegate-ng"
  manager_endpoint = "https://app.harness.io/gratis"
  delegate_image = "harness/delegate:23.06.79707"
  replicas = 1
  upgrader_enabled = false
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
