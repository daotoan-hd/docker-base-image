#!/bin/bash

wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 
mv jq-linux64 /usr/local/bin/jq
chmod +x /usr/local/bin/jq

wget -q -O /usr/bin/yq $(wget -q -O - https://api.github.com/repos/mikefarah/yq/releases/latest | jq -r '.assets[] | select(.name == "yq_linux_amd64") | .browser_download_url')
chmod +x /usr/bin/yq