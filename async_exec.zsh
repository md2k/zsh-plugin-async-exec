#!/usr/bin/env zsh
# Async command execution with zinit ice lucid wait
# https://github.com/zdharma/zinit/issues/68#issuecomment-570776375

async_exec() {
  name=$1;
  cmd=$2;
  delay=${3:-0}
  mkdir -p "${ZINIT[PLUGINS_DIR]}/_local---$name"
  zinit ice lucid wait="$delay" atload="$cmd"
  zinit light "_local/$name"
}
