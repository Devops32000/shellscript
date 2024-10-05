resource "aws_instance" "db" {

    ami = var.image_id
    vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]
    instance_type = var.instance_type
    tags = var.tags 

}

resource "aws_security_group" "sg" {
    name = "sg"
    description = "Sample"

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allow_cidr
    }

    egress {
        from_port = 0
        to_port = 0 
        protocol = "-1"
        cidr_blocks = var.allow_cidr
    }
  
}