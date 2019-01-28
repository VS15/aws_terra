output "VM IP Private address" {
  value = "${aws_instance.instance-1.private_ip}"
}

output "VM IP Public address" {
  value = "${aws_instance.instance-1.public_ip}"


} output "VPC ID" {
  value = "${aws_vpc.main.id}"
}

output "Subnet ID" {
  value = "${aws_subnet.main-private-3.id}"
}

output "Public subnet ID" {
  value = "${aws_subnet.main-public-3.id}"
}
