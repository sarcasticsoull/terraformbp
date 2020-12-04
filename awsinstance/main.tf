provider "aws" {
    version = "2.69.0"
    region="eu-west-2"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "myTag" {
  description = "My Input Tag"
  default = "terraform-test"
}

resource "aws_instance" "machine1" {
    ami           = "ami-086c3a85c1a08fc88"
    instance_type = "t2.micro"
    availability_zone = "eu-west-2b"
    tags = {
      "type" = var.myTag
    }
}

#resource "aws_network_interface_sg_attachment" "sg_attachment1" {
#  security_group_id    = "sg-8e01a2fb"
#  network_interface_id = "${aws_instance.machine1.primary_network_interface_id}"
#}

#resource "aws_network_interface_sg_attachment" "sg_attachment2" {
#  security_group_id    = "sg-aa750ddc"
#  network_interface_id = "${aws_instance.machine2.primary_network_interface_id}"
#}
