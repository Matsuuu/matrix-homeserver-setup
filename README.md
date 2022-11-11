# Matrix homeserver setup repo


### Steps

** Synapse **

1. Navigate to `./synapse`
2. run `generate-configs.sh`
3. Ensure config files were created in `./synapse/data`
4. Set up nginx configs. Basic example in `nginx`
5. Run certbot to enable TLS in your instance

** Registration **

1. Navigate to `./matrix-registration`
2. run `prepare.sh`
3. Start up the docker containers with `docker-compose up`
4. Run `generate-token.sh` to generate a token with 1 week expiry
