locals {
  instance_type = {
        dev = {
        mysql-dev = "t3.small"
        backend-dev = "t3.micro"
        frontend-dev = "t3.micro"
        }

        prod = {
        mysql-prod = "t3.small"
        backend-prod = "t3.micro"
        frontend-prod = "t3.micro"
        }
    }

    tags = {
        Environment = "prod"
    }

#SG
name = "prod"
}
