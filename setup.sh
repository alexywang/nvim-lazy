#!/bin/bash

# Default profile name
PROFILE=burner

# Get values from AWS config/credentials
ACCESS_KEY=$(aws configure get aws_access_key_id --profile "$PROFILE")
SECRET_KEY=$(aws configure get aws_secret_access_key --profile "$PROFILE")
REGION=$(aws configure get region --profile "$PROFILE")
SESSION_TOKEN=$(aws configure get aws_session_token --profile "$PROFILE")

# Create the BEDROCK_KEYS string
REGION=${REGION:-us-east-1}
BEDROCK_KEYS="$ACCESS_KEY,$SECRET_KEY,$REGION,$SESSION_TOKEN"

# Export the variable
export BEDROCK_KEYS="$BEDROCK_KEYS"
