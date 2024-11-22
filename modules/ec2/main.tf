
resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
 

  tags = var.tags
}
                