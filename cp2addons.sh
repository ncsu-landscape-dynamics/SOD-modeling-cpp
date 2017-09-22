#!/bin/bash

if [[ -z "${1// }" ]]
then
    >&2 echo "Usage:"
    >&2 echo "  $0 addon/directory"
    exit 1
fi

cp $(git ls-files | grep -vE ".gitignore|cp2addons.sh") $1
