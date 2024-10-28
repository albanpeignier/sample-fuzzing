#!/usr/bin/env sh

# rm -rf vendor .bundle

ls corpus/* | grep -v '.json' | xargs rm
rm crash-*
