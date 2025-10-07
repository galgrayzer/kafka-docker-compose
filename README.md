# Kafka on Docker Compose

This repo contains a docker-compose.yaml file that can be used to
create a dev Kafka cluster on the latest version.

## Requirements

- docker
- docker-compose
- apache/kafka@latest image (if there is a connection to docker.io, docker will automatically pull the image from the remote repo)

## How To Run?

1. Run `docker compose up -d` to create all the containers in detached mode.
2. After the Kafka cluster has been lunched successfully, run `docker exec -it broker-1 /etc/kafka/config/create-user.sh` to create the admin scram user.

## Now What?

After completing all the above steps you got a Kafka cluster running on the latest version with:

- 3 controllers
- 3 brokers
- SASL_PLAINTEXT security protocol
- SCRAM-SHA-256 scram mechanism
- super user with the credentials `admin` : `admin-secret`
