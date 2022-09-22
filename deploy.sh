#!/bin/bash

# Define/accept arguments
while getopts ":d:u:p:a:" opt; do
  case $opt in
    d) database="$OPTARG"
    ;;
    u) username="$OPTARG"
    ;;
    p) password="$OPTARG"
    ;;
    a) allowUnsafe="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done

# read -p 'Database: ' database
# read -p 'MySQL user: ' username
# read -p 'MySQL password: ' password
# read -p 'Allow unsafe operations (i.e. TRUNCATE) (y/n): ' allowUnsafe

# 1. Run docker
bash utils/run-docker.sh

# 2. Deploy schema changes
# bash ./utils/skeema-diff.sh
bash utils/skeema-push.sh -u $username -p $password -a $allowUnsafe