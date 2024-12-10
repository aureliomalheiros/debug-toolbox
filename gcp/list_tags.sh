#!/bin/bash

TAG_NAME="YOUR_TAG"
projects=$(gcloud projects list --sort-by=projectId --format="value(projectId)")

for project in $projects; do
    instances=$(gcloud sql instances list --project=$project --format="value(name)")

    for instance in $instances; do
        tags=$(gcloud sql instances describe "$instance" --project=$project --format="json(labels)")

        if [[ $tags != *"$TAG_NAME"* ]]; then
            echo "project: '$project' instance: '$instance'"
        fi

    done

done
