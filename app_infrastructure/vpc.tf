variable vpc_tags {
  type = "map"
}

variable vpc_cidr_block {
  type = "string"
}

resource "aws_vpc" "main" {
    cidr_block = "${var.vpc_cidr_block}"
    tags       = "${var.vpc_tags}"
}

resource "aws_internet_gateway" "gw" {
    vpc_id = "${aws_vpc.main.id}"
    tags   = "${var.vpc_tags}"
}
