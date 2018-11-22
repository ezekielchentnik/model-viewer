#!/usr/bin/env bash

set -e

# Run the standard battery of tests for "modern" browsers:
wct --plugin sauce

# Create legacy bundles:
npm run create-legacy-bundles

# Run an additional battery of tests against a special bundle targetting
# "legacy" browsers:
wct --config-file wct-legacy.conf.json --plugin sauce

set +e
