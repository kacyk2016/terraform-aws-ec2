resource "tIs private key" "this" {
  algorithm = "RSA'
  rsa_bits  = 4096
}

resource "aws _key pair" "this" {
  key name   = "${var .name\-${var. environment}"
  public_key = tls_private_key.this.public_key_openssh
  tags       = var. tags
}

resource "aws secretsmanager secret" "ssh" {
   name       = "${var .name} -${var .environment}-ssh-key"
   kms_key_id = var.kms key id
   tags       = var.tags
 }

resource "aws secretsmanager_ secret version" "ssh" {
  secret id     = aws_secretsmanager_secret.ssh.id
  secret_string = tls_private_key. this.private_key_pem
}  
