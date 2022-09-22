#!/bin/bash

# Define/accept arguments
while getopts ":d:u:p:h:" opt; do
  case $opt in
    d) database="$OPTARG"
    ;;
    u) username="$OPTARG"
    ;;
    p) password="$OPTARG"
    ;;
    h) hostname="$OPTARG"
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

rm -rf skeema/$database

skeema init -h $hostname -u $username -p$password -d $database --dir skeema