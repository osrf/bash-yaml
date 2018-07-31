#!/bin/bash

# Based on https://gist.github.com/pkuczynski/8665367

yaml()
{
   local file=${1}

   python3 -c "import yaml;print(yaml.load(open('$1'))$2)"
}

function create_variables() {
   local file=${1}

   # fake image exportation from previous buggy script
   image=$(yaml "${file}" "['image']")
   export image
}
