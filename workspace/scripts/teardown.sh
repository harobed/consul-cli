#!/bin/bash
source $(dirname $0)/_common.sh
cd $WORKSPACE_DIR

docker-compose down
rm -rf ${PROJECT_DIR}/vendor/
