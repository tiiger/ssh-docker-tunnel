#!/bin/bash

docker exec -u git -i -e SSH_CONNECTION="$SSH_CONNECTION" -e SSH_ORIGINAL_COMMAND="$SSH_ORIGINAL_COMMAND" gitlab /opt/gitlab/embedded/service/gitlab-shell/bin/gitlab-shell $1
