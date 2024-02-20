# Define the AWS provider and specify the region
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQ3EGQVPJP7J2EOMT"
  secret_key = "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"
}

# Define the AWS instance resource
resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"  # Ubuntu 20.04 LTS AMI
  instance_type = "t2.micro"
  
  tags = {
    Name = "UbuntuInstance"
  }
}
