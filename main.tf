
provider "aws" {
  region = "ap-south-1"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "example-bucket-tera12255"
  # acl         = "private"
  tags = {
    Name = "ExampleS3Bucket"
  }
}

module "vpc" {
  source            = "./modules/vpc"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr       = "10.0.1.0/24"
  availability_zone = var.availability_zone_Local
  tags = {
    Name = "ExampleVPC"
  }
}

module "ec2" {
  source       = "./modules/ec2"
  ami          = "ami-0dee22c13ea7a9a67" # Replace with a valid AMI for ap-southeast-1
  instance_type = "t2.micro"
  subnet_id    = module.vpc.subnet_id
  # key_name     = "your-key-pair-name"
  tags = {
    Name = "ExampleEC2Instance"
  }
}
        