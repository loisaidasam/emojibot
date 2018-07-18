#!/bin/bash

# https://api.slack.com/incoming-webhooks

WEBHOOK_URL="https://hooks.slack.com/services/YOUR/WEBHOOK/HERE"

if [ -z "$1" ]
then
	echo "Missing message dep!"
	exit 1
fi

curl -Ss -X POST --data "payload={\"text\": \"${1}\"}" ${WEBHOOK_URL}

