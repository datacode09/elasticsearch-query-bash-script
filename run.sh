#!/bin/bash

# Elasticsearch settings
ELASTICSEARCH_HOST="https://your-cloud-host-url"
INDEX_NAME="your_index_name"
USERNAME="your_username"
PASSWORD="your_password"
QUERY='{
  "query": {
    "match": {
      "field_name": "search_term"
    }
  }
}'

# Sending the query to Elasticsearch with authentication
curl -X GET "$ELASTICSEARCH_HOST/$INDEX_NAME/_search" -H "Content-Type: application/json" -u "$USERNAME:$PASSWORD" -d "$QUERY"
