

variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = " RHEL ami id "
}
variable "sg_id"{

}

variable "instance_type"{
    type = string
    default = "t3.micro"
    validation {
        condition     = contains(["t3.micro", "t3.small"], var.instance_type)
        error_message = "Valid values for instance types are: t3.micro, t3.small"
    }
  
}   

variable "ec2_tags"{
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
}

# variable "to_port"{
#     type = number
#     default = 22
# }

# variable "from_port"{
#     type = number
#     default = 22
# }

# variable "cidr_blocks"{
#     type = list(string)
#     default = ["0.0.0.0/0"]
# }


