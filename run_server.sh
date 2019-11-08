#!/bin/bash
set -eu
tar xf node.tar.gz
cd node
node index.js &
