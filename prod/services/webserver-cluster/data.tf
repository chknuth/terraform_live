data "aws_ami" "ubuntu" {
	most_recent = true
	owners = ["285398391915"] # Canonical

	filter {
		name = "virtualization-type"
		values = ["hvm"]
	}

	filter {
		name = "architecture"
		values = ["x86_64"]
	}

	filter {
		name = "image-type"
		values = ["machine"]
	}

	filter {
		name = "name"
		values = ["ami-ubuntu-16.04-*"]
	}
}
