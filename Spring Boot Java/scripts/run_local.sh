#!/bin/bash

. ./scripts/parse_env.sh

run_nothing="${RUN_NOTHING_ON_LOCAL}"
if [[ $run_nothing = "1" ]]; then
    tail -f /dev/null
else
    mvn clean package
    mvn spring-boot:run

    run_sonar="${RUN_SONAR_ANALYSIS}"

    if [[ $run_sonar = "1" ]]; then
        . ./scripts/run_sonar_analysis.sh
    fi
fi
