gradle wrapper
./gradlew jettyRun &> /dev/null &
sleep 220
cd acceptance-tests && rake cucumber_test
