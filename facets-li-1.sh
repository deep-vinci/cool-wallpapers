#!/bin/bash

baseurl="https://d2j7mtsoydewxq.cloudfront.net/facets-ii"

# Loop from 366 to 730 as by manual sources inspection i only found that many urls
for i in $(seq 366 730); do

  url="${baseurl}/${i}-desktop.png"
  filename="${i}-desktop.png"


  echo "Downloading ${filename} from ${url}"

  curl -s -o "$filename" "$url"
done

echo "Download complete."
