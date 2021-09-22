provider "aws" {
  version = "~> 2.7"
  region  = "us-east-2"
}

resource "aws_instance" "web" {  
  ami = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}
