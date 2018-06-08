provider "aws" {
	region = "eu-central-1"
}

resource "aws_s3_bucket" "terraform_state" {
	bucket = "chk-terraform-test"

	versioning {
		enabled = true
	}

	lifecycle {
		prevent_destroy = true
	}

	tags {
		Name = "S3 Remote Terraform State Store"
	}
}
