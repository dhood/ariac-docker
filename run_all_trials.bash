#!/usr/bin/env bash

set -e

TEAM_NAME=$1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TRIAL_CONFIG_FILES="$DIR"/comp_configs/*
for TRIAL_CONFIG_FILE in ${TRIAL_CONFIG_FILES}; do
  TRIAL_NAME=${TRIAL_CONFIG_FILE%.*}
  echo "Running trial: ${TRIAL_NAME}"
  #TODO: GET THIS TO RUN THE INDIVIDUAL TRIALS CORRECTLY.
  ./run_trial.bash ${TEAM_NAME} ${TRIAL_NAME}
done
