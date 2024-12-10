#!/bin/bash

if [ -z "$1" ]; then
    echo "./stopped_vms.sh PROJECT_ID"
    exit 1
fi

PROJECT_ID=$1

gcloud compute instances list --filter="status=TERMINATED" --format="table(name,zone)" --project=$PROJECT_ID

echo $(wc -l <<< $(gcloud compute instances list --filter="status=TERMINATED" --format="table(name,zone)" --project=$PROJECT_ID))