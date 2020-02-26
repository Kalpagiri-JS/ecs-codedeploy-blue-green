#!/bin/bash
zip sample-lambda-dev.zip lambda-function/* node_modules/*

aws cloudformation package \
    --template-file cloudformation/ecs-cloud-formation-template.yml \
    --s3-bucket pricing-qa \
    --output-template-file cloudformation/sample-ecs-template.yml

aws cloudformation deploy \
    --template-file cloudformation/sample-ecs-template.yml \
    --stack-name sample-ecs-stack