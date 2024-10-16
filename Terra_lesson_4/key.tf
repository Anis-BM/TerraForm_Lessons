#Creates a PEM (and OpenSSH) formatted private key.
#Generates a secure private key and encodes it in PEM (RFC 1421) and OpenSSH PEM (RFC 4716) formats. 
#This resource is primarily intended for easily bootstrapping throwaway development environments.

resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
