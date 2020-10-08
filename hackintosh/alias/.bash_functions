#!/bin/bash

function dm() {
  echo
  echo "STARTING DOCKER MACHINE..."
  docker-machine start
  echo

  echo "---> docker-machine env"
  echo

  echo "---> eval $(docker-machine env default)"
  eval "$(docker-machine env default)"

  echo "---> ssh into docker-machine"
  docker-machine ssh default "sudo sysctl -w vm.max_map_count=262144"
  echo
  echo "---> DONE"
}
