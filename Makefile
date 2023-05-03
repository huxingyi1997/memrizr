.PHONY: create-keypair

PWD = $(shell pwd)
SERVERPATH = $(PWD)/server

create-keypair:
	@echo "Creating an rsa 256 key pair"
	openssl genpkey -algorithm RSA -out $(SERVERPATH)/rsa_private_$(ENV).pem -pkeyopt rsa_keygen_bits:2048
	openssl rsa -in $(SERVERPATH)/rsa_private_$(ENV).pem -pubout -out $(SERVERPATH)/rsa_public_$(ENV).pem
