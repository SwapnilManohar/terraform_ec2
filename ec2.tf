module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  

  name = "single-new-instance"

  ami                    = "ami-0a8b4cd432b1c3063"
  instance_type          = "t2.micro"
  key_name               = "Swapnil-Vpc"
  
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
