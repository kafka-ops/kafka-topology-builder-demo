curl "https://api.github.com/repos/purbon/kafka-topology-builder-demo/statuses/$GITHUB_PR_HEAD_SHA?access_token=$GITHUB_TOKEN" \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"state\": \"success\",\"context\": \"topology-builder-pipeline-verify\", \"description\": \"Jenkins\", \"target_url\": \"http://ec2-54-171-39-20.eu-west-1.compute.amazonaws.com:8080/job/topology-builder-pipeline-verify/$BUILD_NUMBER/console\"}"

exit 0
