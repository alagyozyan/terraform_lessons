provider "aws" {}

resource "aws_instance" "my_Ubuntu" {
    count           = 1
    ami             = "ami-00874d747dde814fa"
    instance_type   = "t2.micro"

    tags = {
        Name        = "My Ubuntu Server"
        Owner       = "Edgar Alagyozyan"
        Project     =  "Terraform Lessons"
    }
}
