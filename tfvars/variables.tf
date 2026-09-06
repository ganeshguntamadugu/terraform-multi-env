variable "instance_type" {
  type        = map
  default     = {
    
  }
}

variable "commontags"{
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

variable "tags" {
    
}

variable "name" {

}

#Route53
variable "zone_id" {
    default = "Z04145091EI26FOSI2CQV"
}

variable "domain_name" {
    default = "gangs.shop"
}