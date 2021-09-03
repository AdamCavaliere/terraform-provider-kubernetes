variable "location" {
  type    = string
  default = "westus2"
}

resource "random_id" "cluster_name" {
  byte_length = 6
}

locals {
  cluster_name = "tf-k8s-${random_id.cluster_name.hex}"
}
