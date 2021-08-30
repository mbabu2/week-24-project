# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "artifact-maddy"
    key    = "remote.tfstate"
    region = "ap-south-1"
  }
}
