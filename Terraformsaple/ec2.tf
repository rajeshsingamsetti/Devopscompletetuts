
resource "aws_instance" "public-instanes" {
    //ami = var.imagename
    #ami = "${data.aws_ami.my_ami.id}"
    count = "${var.environment == "Prod" ? 1 : 1}"
    //ami = "ami-clea"
    ami = "${lookup(var.amis, var.aws_region, "us-east-1")}"
    //availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "east111"
    subnet_id = "${element(aws_subnet.public-subnets.*.id, count.index)}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true
        user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update
                sudo apt-get install -y nginx unzip
                echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
                
    EOF 

    tags = {
        Name = "Public-server-${count.index+1}"
    #     Env = "Prod"
    #     Owner = "Sree"
	# CostCenter = "ABCD"
    }
		        
}

