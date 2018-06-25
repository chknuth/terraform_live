provider "aws" {
	region = "${var.aws_region}"
}

module "webserver-cluster" {
	source = "../../../modules/services/webserver-cluster"

 	ami = "${data.aws_ami.ubuntu.id}"
#	ami = "ami-6137648a"
# 	ami = "ami-de486035"
	server_text = "webservers-prod"

	aws_region = "${var.aws_region}"
	cluster_name = "${var.cluster_name}"
	db_remote_state_bucket = "${var.db_remote_state_bucket}"
	db_remote_state_key = "${var.db_remote_state_key}"

	instance_type = "t2.micro"
        min_size = 2
        max_size = 4
	enable_autoscaling = true
}

