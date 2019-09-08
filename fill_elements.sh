#!/usr/bin/env bash

nav=$(cat element/nav.html)

cat >script/elts.js <<SCRIPT
window.myElements = {
  "nav": "$(echo $nav)"
}
SCRIPT