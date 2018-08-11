#!/bin/bash
source $(dirname $0)/_common.sh
cd $WORKSPACE_DIR

docker-compose up -d --build
docker-compose exec goworkspace dep ensure  -v
docker-compose exec goworkspace go build -o /bin/consul-cli
docker-compose exec goworkspace /bin/consul-cli version
