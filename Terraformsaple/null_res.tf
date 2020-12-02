resource "null_resource" "localexec" {
    count = "${var.environment == "Prod" ? 1 : 1}"
    provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
    connection {
    type     = "ssh"
    user     = "ubuntu"
    #password = "India@123456"
    private_key = "${file("east111.pem")}"
    host     = "${element(aws_instance.public-instanes.*.public_ip, count.index)}"
    }
    }

    provisioner "local-exec" {
    command = <<-EOF
      echo "${element(aws_instance.public-instanes.*.public_ip, count.index)}"  >> details.txt
    EOF
    }

    provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo bash /tmp/script.sh",
      "sudo yum update -y",
      "sudo yum install nginx -y",
      "sudo service nginx start"

      ]
    connection {
    type     = "ssh"
    user     = "ubuntu"
    #password = "India@123456"
    private_key = "${file("east111.pem")}"
    host     = "${element(aws_instance.public-instanes.*.public_ip, count.index)}"
    }
    }


}