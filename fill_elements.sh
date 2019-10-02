#!/usr/bin/env bash

nav_pre=$(cat element/nav.html)

nav=$(sed 's/"/\\"/g' <<< $nav_pre)

cat > script/elts.js <<SCRIPT
window.myElements = {
  "nav": "$(echo $nav)"
}
SCRIPT