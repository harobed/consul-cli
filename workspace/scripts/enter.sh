#!/bin/bash
source $(dirname $0)/_common.sh
cd $WORKSPACE_DIR

docker-compose exec goworkspace bash
