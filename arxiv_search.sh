#!/bin/bash

curl -s 'https://arxiv.org/search/math?query=Terence+Tao+Erdos&searchtype=all' |
	tr -d '\n' | tr '<' '\n' |  tr '>' '\n' | grep "arXiv:" | sed 's/arXiv://' | sort -u
