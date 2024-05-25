provider "aws"{
region="us-east-1"
}

resource "aws_instance" "AWSEC2"{
ami = "ami-0fe630eb857a6ec83"
instance_type = "t2.micro"
key_name= "linux"
security_groups = ["launch-wizard-2"]
tags = {
Name = "tomcatservers"
}
}
