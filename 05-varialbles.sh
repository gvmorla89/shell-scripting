#!/bin/bash

START_TIME=$(date +%s)

echo "Script Execution Start Time: $START_TIME"

sleep 10

END_TIME=$(date +%s)
echo "Script Execution End Time: $END_TIME"
TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Total Time taken for Script Executionn: $TOTAL_TIME"