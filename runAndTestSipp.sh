#!/bin/bash
if [ "$#" == "4" ]; then 
    ports=$1
    volume=$2
    scenarioPath=$3
    remoteIp=$4
    echo "exposing ports: $ports"
    echo "Mounting volume: $volume"
    echo "ScenarioPath: $scenarioPath"
    echo "Remote ip: $remoteIp"
    docker run -p $ports -v $volume ctaloi/sipp -m 1 -sf $scenarioPath $remoteIp

else
    echo 'Usage ./runAndTestSipp.sh 5060:5060/udp /home/scenarios:/home/scenarios /home/scenarios/uac-example.xml 127.0.0.1'
fi

