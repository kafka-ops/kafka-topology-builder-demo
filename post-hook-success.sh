curl "https://api.github.com/repos/purbon/kafka-topology-builder-demo/statuses/$GIT_COMMIT?access_token=$GITHUB_TOKEN" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"success\",\"context\": \"topology-builder-pipeline-verify\", \"description\": \"Jenkins\", \"target_url\": \"http://ec2-54-171-39-20.eu-west-1.compute.amazonaws.com:8080/job/topology-builder-pipeline-verify/$BUILD_NUMBER/console\"}"
<<<<<<< HEAD

exit 0
=======
>>>>>>> 369f24390cdd0e0cd813506da664f2cb531373c9
