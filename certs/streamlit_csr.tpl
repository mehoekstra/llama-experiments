[req]
default_bits = 2048
default_md = sha256
distinguished_name = req_distinguished_name
prompt = no

[req_distinguished_name]
C = US
ST = Oregon
L = Hillsboro
O = Intel
OU = "TDX LLM Demo"
CN = $IP_ADDR_PLACEHOLDER

