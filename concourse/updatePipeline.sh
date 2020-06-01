#!/bin/bash

fly --target manulife-ci login --concourse-url https://concourse.platform.manulife.io --insecure --team-name TELEMETRY

fly -t manulife-ci set-pipeline -p benchmarkpipeline -c pipeline.yml --load-vars-from vars.yml

#fly -t manulife-ci destroy-pipeline -p telemetry-metrics-client


