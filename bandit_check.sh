#!/bin/bash
set -euo pipefail
echo "--- :python: Bandit Test"
echo "--- Called with args::"
echo $@
param=$@
CMD="/usr/local/bin/bandit -r"
if [ -e /bandit_configs.yml ]
then
  echo "--- :python: found config file"
  param+=" -c /bandit_configs.yml"
fi
$CMD $param
echo "👌 Passed Bandit Test"