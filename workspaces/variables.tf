variable "instance_type" {
  type        = map
  default     = {
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
}

variable "commontags"{
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "tags" {
    default = {
        dev = {
            Environment = "Dev"
        }

        prod = {
            Environment = "Prod"
        }
    }
}

# variable "name" {
#     default = {
#         dev = {
#             name = "dev"
#         }

#         prod = {
#             name = "prod"
#         }
#     }
# }

#Route53
variable "zone_id" {
    default = "Z04145091EI26FOSI2CQV"
}

variable "domain_name" {
    default = "gangs.shop"
}