terraform {
    backend "s3" {
    bucket = "tf-s3backend-laralabs"
    encrypt = true
    key = "lab-4/terraform.tfstate"
    region = "sa-east-1"
    profile = "tf_linux_lab"
    dynamodb_table = "terraform-state"
  }
}