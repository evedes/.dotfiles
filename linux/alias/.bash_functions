#!/bin/bash

function killport() {
  echo
  echo "Port to kill: "
  read port
  
  echo
  lsof -i :$port
  echo

  echo "Want to kill process (Y/n)? "
  read confirm
  
  if [[ $confirm = "y" ]] | [[ -z $confirm ]];  then
    kill $(lsof -t -i:$port)
    echo "DONE"
    return 0
  else
    return 1
  fi

}