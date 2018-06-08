terraform {
	backend "s3" {
		encrypt = true
		bucket = "chk-terraform-test"
		dynamodb_table = "terraform-state-lock-dynamo"
		region = "eu-central-1"
		key = "stage/data-stores/mysql/terraform.tfstate"
	}
}
