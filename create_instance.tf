resource "aws_instance" "myfirst" {
         ami = lookup(var.AMIS,var.AWS_REGION)
         instance_type = "t2.micro"
         availability_zone = data.aws_availability_zones.available.names[1]

}
