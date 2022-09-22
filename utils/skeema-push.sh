#!/bin/bash

# Define/accept the u and p arguments
while getopts ":u:p:a:" opt; do
  case $opt in
    u) username="$OPTARG"
    ;;
    p) password="$OPTARG"
    ;;
    a) a="$OPTARG"
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

if [ $a = "y" ]; then
  allowUnsafe=true
else
  allowUnsafe=false
fi

skeema push -u $username -p$password --workspace docker --docker-cleanup destroy --allow-unsafe=$allowUnsafe
