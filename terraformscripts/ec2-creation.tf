provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2instance" {
    ami = "ami-0fe630eb857a6ec83"
    instance_type = "t2.micro"
    key_name = "nd"
    security_groups = [ "launch-wizard-2" ]
    tags = {
      Name = "tomcatservers"
    }
  
}
