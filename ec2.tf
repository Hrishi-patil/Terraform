provider "aws" {
  access_key = "AKIA4T3F4O2DADMUHVMI"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_instance" "vm-pgdb" {
ami = "ami-077062c5cfb91a89e"
instance_type = "t2.micro"
key_name = "nverg.pem"
security_group_id = "sg-086fea28350f04e28"
}

provisioner "file" {
   source = "install.sh"
   destination = "/tmp/install.sh"
}

provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/install.sh"
    "sudo /tmp/install.sh
  ]
}

connection {
  host = coalesce(self.public_ip, self.private_ip)
  type = "ssh"
  user = ec2-user
}