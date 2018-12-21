output "VM IP Private address" {
  value = "${aws_instance.example.private_ip}"
}

output "VM IP Public address" {
  value = "${aws_instance.example.public_ip}"
}
