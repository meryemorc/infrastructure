provider "aws" {
  region = "eu-west-1"
}

# Key Pair oluşturuyoruz
resource "aws_key_pair" "meryemoruc_key" {
  key_name   = "meryemoruc-key"
  public_key = file("${path.module}/meryemoruc-key.pub")
}

# EC2 instance oluşturuyoruz
resource "aws_instance" "meryemoruc_server" {
  ami           = "ami-001052e6d51474076"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.meryemoruc_key.key_name
}
