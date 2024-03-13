#!/bin/bash

if ! command -v docker &> /dev/null; then
        echo "Docker is not installed"
        exit 1
fi
choice="$1"
case $choice in
        elasticsearch)
          component="elasticsearch"
          docker run -d --name "$conatiner_name" -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.15.0

echo "$component Elasticsearch is now running in a Docker container $container_name."
        echo "Elasticsearch is now running in a Docker container."
                ;;
        kibana) echo "you select kibana"
                ;;
        quit) echo "Quitting" exit
                ;;
        *) echo "default selection";;
esac

