provider "google" {
  # Configuration options
  project = "burnished-ether-417100"
  region = "us-central1"
  credentials = "burnished-ether-417100-069d8826cf19.json"
}
# gcloud container clusters update primary     --region us-central1-a     --gateway-api=standard