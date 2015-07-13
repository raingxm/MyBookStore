#!/usr/bin/env bash
gradle wrapper
./gradlew jettyRun &> /dev/null &
sleep 30
cd acceptance-tests && bundle exec rake cucumber_test
