#!/bin/bash

query=$(echo $* | tr ' ' '+')

curl -s "https://arxiv.org/search/math?query=${query}&searchtype=all" |
	tr -d '\n' | tr '<' '\n' |  tr '>' '\n' | grep "arXiv:" | sed 's/arXiv://' | sort -u

