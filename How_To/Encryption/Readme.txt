NOTE: 
 - Each operation system (windows, mac os, linux disctributions) come with list of pre-installed certificates (Trusted Root Certification Authority)
 - All web-browsers trust for this pre-installed certificates by default.
openssl - special tool for generating private/public keys, save them to file for instance pem

Usage:
openssl.exe genrsa -aes256 (generage private key & encrypt it with aes256 algo)
openssl.exe genrsa -aes256 -out private-key-file.rem (generage private key & encrypt it with aes256 algo & save to file private-key-file.rem)

Generated private key contains public key. You are able to exatract public key using next command ->
openssl.exe rsa -in private-key-file.rem -outform PEM -pubout -out public-key-file.pem 
(
  -pubout flag says that we want to extract public key.
  -in says that we want to extract public key from private-key-file.rem file.
  -outform format of public key.
  -out says that we want to preserve public key into private-key-file.rem file.
)
