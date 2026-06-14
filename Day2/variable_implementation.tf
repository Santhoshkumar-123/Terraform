# variable Demo

'''hcl
# Define an input variable for the EC2 instance Type

variable "EC2 Instance type"{
    description = "EC2 Instance type"
    type = string
    default = "t2,micro"
}

# Define an input variable for the EC2 instance AMI ID

varible "ami-id"{
    description = "EC2 ami ID"
    type = string
    
}

# Configure the AWS provider using the input variables
provider "aws" {
  region      = "ap-south-1"
}


# Configure the AWS provider using the input variables

resource "aws_instance" "example_instance"{
    ami = var.ami_id
    instance_type = var.instance_type
}

# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip{
    description = "Public IP address of the EC2 instance"
    value = aws_instance.example_instance.public_ip
}
