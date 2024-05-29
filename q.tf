# Define the AWS provider and region
provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

# Define the EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (replace with your desired AMI)
  instance_type = "t2.micro"               # Instance type (change as needed)

  tags = {
    Name = "example-instance"
  }
}

# Output the public IP address of the instance
output "public_ip" {
  value = aws_instance.example_instance.public_ip
}
