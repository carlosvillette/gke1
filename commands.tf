resource "null_resource" "cluster_connect" {
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name} --zone ${google_container_cluster.primary.location} --project ${var.project}"
  }

  provisioner "local-exec" {
    command = "gcloud container clusters update primary     --zone us-central1-a     --gateway-api=standard"
  }

  depends_on = [ google_container_cluster.primary ]
}