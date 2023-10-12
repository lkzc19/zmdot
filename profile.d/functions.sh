#!/bin/bash

# 创建目录并进入
function md() {
  mkdir -p "$@" && cd "$@"
}
