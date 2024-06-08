terraform {
  backend "s3" {
    bucket         = "tf-s3backend-laralabs"
    encrypt        = true
    key            = "lab-5/terraform.tfstate"
    region         = "sa-east-1"
    profile        = "tf_py_lab"
    dynamodb_table = "terraform-state"
  }
}
