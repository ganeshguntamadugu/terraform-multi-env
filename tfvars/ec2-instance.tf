# To create ec2-instance
resource "aws_instance" "instance_terraform" {
    for_each = var.instance_type #for each will give us a special variable "each"
    ami = "ami-0220d79f3f480ecf5"
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.sg_terraform.id]
    tags = merge (
        var.commontags,
        var.tags,
        {
            Name = each.key
        }
    )
}


# To create Security group
resource "aws_security_group" "sg_terraform" {
    name = "Allow SSH ${var.name}"
    description = "Allow SSH protocal 22"

    #inbound rule
    ingress{
        description = "Allow port number 22"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #outbound rule
    egress{
        description = "Allow all"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = merge (
        var.commontags,
        var.tags,
        {
            Name = "Allow_SSH_${var.name}"
        }
    )
}

