
keys_folder="keys"
keys_file="dev.key"

openssl genpkey -algorithm RSA -out $keys_folder/keys_file -pkeyopt rsa_keygen_bits:2048 -pkeyopt rsa_keygen_pubexp:65537
openssl req -batch -new -x509 -key $keys_folder/keys_file -out keys/dev.crt
openssl rsa -in $keys_folder/keys_file -pubout
