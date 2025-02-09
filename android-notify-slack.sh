LINKS_FILE="java-kotlin-android-article.yml"

message="Java Kotlin Android Weekly News：\n"
while IFS= read -r line; do
  if [[ $line =~ ^[[:space:]]*([^:]+):[[:space:]]*(https?://.+)$ ]]; then
    title="${BASH_REMATCH[1]}"
    link="${BASH_REMATCH[2]}"
    message+="- ${title}: ${link}\n"
  fi
done < "$LINKS_FILE"

# Slackに通知
curl -X POST -H 'Content-type: application/json' \
  --data "{\"text\": \"$message\"}" "$SLACK_WEBHOOK_URL"
