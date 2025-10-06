#!/bin/bash

kafka-configs.sh \
  --bootstrap-server localhost:9093 \
  --alter --add-config 'SCRAM-SHA-256=[iterations=4096,password=admin-secret]' \
  --user admin
