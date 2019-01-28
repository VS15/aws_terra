resource "aws_instance" "instance-1" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = "${aws_subnet.main-public-1.id}"

  # the security groups
  vpc_security_group_ids = [
    "${aws_security_group.allow-ssh-2.id}",
    ]

  # the public SSH key
  key_name = "${aws_key_pair.mykeypair.key_name}"
}
  #adding storage
resource "aws_ebs_volume" "ebs-volume-1" {
    availability_zone = "us-east-2a"
    size = 10
    type = "gp2"
    tags {
        Name = "extra volume data"
    }
}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = "/dev/storage1"
  volume_id = "${aws_ebs_volume.ebs-volume-1.id}"
  instance_id = "${aws_instance.instance-1.id}"
}
