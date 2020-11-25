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

function ff() {
  echo
  echo "MERGING VIDEO AND AUDIO"
  ffmpeg -i $1 -i $2 -c:v copy -c:a aac output.mp4
  echo "MERGED!"
  rm $1
  rm $2
  echo "Sources Deleted"
}

function edo() {
  echo "hello edo"
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
