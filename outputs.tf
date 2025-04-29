output "public_ip" {
  value = aws_instance.meryemoruc_server.public_ip
  description = "EC2 Instance'ın Public IP adresi"
}
