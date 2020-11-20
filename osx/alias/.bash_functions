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

function resetnxt() {
  echo
  echo "RESETTING NXT..."
  echo "---> yarn stop"
  yarn stop
  echo
  echo "---> git clean -id"
  git clean -id
  echo
  echo "---> node_modules/.bin/lerna clean"
  node_modules/.bin/lerna clean
  echo
  echo "---> yarn"
  yarn 
  echo 
  echo "---> yarn dev"
  yarn dev

}
