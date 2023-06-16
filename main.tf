terraform {

          required_providers {:
          aws = {
              source = "hashicorp/aws"
              }
        }

}

provider "aws" {
         region = "us-east-1"
         access_key = "IAM-user-key"
         secret_key = "supersecretkey"
}

resource "aws_instance" my-ec2-instance {
         ami = "copyami-id-from-console"
         instance_type = "t2.micro"

         tags = {
              Name = "rohit-ec2"
              }
}


- terraform init
- terraform validate
- terraform plan
- terraform apply
- terraform destroy
