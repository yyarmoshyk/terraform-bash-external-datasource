#!/usr/bin/env bash
function error_exit() {
  echo "$1" 1>&2
  exit 1
}

function check_deps() {
  jq_test=$(which jq)
  curl_test=$(which curl)
  if [[ -z $jq_test ]]; then error_exit "JQ binary not found"; fi
  if [[ -z $curl_test ]]; then error_exit "curl binary not found"; fi
}

function extract_data() {
  my_ip=$(curl -q https://ifconfig.me/ip)
  jq -n --arg my_ip "$my_ip" '{"my_ip":"'$my_ip'"}'
}

check_deps
extract_data
