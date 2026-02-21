#!/bin/bash

# Default profile name
BEDROCK_PROFILE=bedrock-dev

# Get values from AWS config/credentials
BEDROCK_ACCESS_KEY=$(aws configure get aws_access_key_id --profile "$BEDROCK_PROFILE")
BEDROCK_SECRET_KEY=$(aws configure get aws_secret_access_key --profile "$BEDROCK_PROFILE")
BEDROCK_REGION=$(aws configure get region --profile "$BEDROCK_PROFILE")
BEDROCK_SESSION_TOKEN=$(aws configure get aws_session_token --profile "$BEDROCK_PROFILE")

# Create the BEDROCK_KEYS string
BEDROCK_REGION=${REGION:-us-west-2}
BEDROCK_KEYS="$BEDROCK_ACCESS_KEY,$BEDROCK_SECRET_KEY,$BEDROCK_REGION,$BEDROCK_SESSION_TOKEN"

# Export the variable
export BEDROCK_KEYS="$BEDROCK_KEYS"
