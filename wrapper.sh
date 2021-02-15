#!/bin/bash

rundeckvars="$(env | awk -F"[=]+" '/RD_/{print "" tolower($1) "=\"" $2 "\""}' | tr '\n' ' ')"
ansible-playbook --extra-vars "${rundeckvars}" "${RD_OPTION_PLAYFILE}"
