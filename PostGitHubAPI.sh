#!/usr/sh

state="success"
revision="35d16cfb1d297157df0b1b4a4c39fa2d71112de2"

case "${state}" in
  "pending" ) description="Pending" ;;
  "failure" ) description="Failure" ;;
  "success" ) description="Success" ;;
  *) description="";;
esac

curl -X POST -H "Authorization: token 0829a45e180bd7b083f234a868105ad67a494c8c" \
  https://api.github.com/repos/fumkob/JenkinsTest/statuses/${revision} -d "{ \
  \"state\": \"${state}\", \
  \"target_url\": \"${target_url}\", \
  \"description\": \"${description}\" \
}"