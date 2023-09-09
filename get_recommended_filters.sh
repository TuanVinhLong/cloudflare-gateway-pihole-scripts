#!/bin/bash

source "$(dirname "$0")/helpers.sh"

# declare an array of urls
urls=(
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt
  https://cdn.iblockads.net/premium/hatuan1005.iblockads.txt
)

# download all files in parallel and append them to input.csv
download_lists $urls 'input.csv'

# print a message when done
echo "Done. The input.csv file contains merged data from recommended filter lists."
