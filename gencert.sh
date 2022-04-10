openssl genrsa -out tkgm-guest2-private.key 2048
openssl req -new -key tkgm-guest2-private.key -out tkgm-guest2.csr -subj "/C=US/ST=CA/L=Palo Alto/O=VMware/OU=Antrea Cluster/CN=tkgm-guest2"
openssl x509 -req -days 3650 -sha256 -in tkgm-guest2.csr -signkey tkgm-guest2-private.key -out tkgm-guest2.crt

