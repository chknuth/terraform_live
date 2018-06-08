provider "aws" {
	region = "eu-central-1"
}

module "mysql_database" {
        source = "../../../modules/datastores/mysql"

        db_instance_name = "webserver_mysql_UAT"
        db_password = "Mai2018!"

        db_remote_state_bucket = "chk-terraform-test"
        db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"

}

output "address" {
	value = "${module.mysql_database.address}"
}

output "port" {
	value = "${module.mysql_database.port}"
}

