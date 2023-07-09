#!/bin/bash

# 该脚本用于将lkzc19的配置文件同步至同步zmdot目录下，用于上传至git备份使用

ZMDOT_HOME=$HOME/Projects/zmdot

cp $HOME/.zshrc $ZMDOT_HOME/
cp -r $HOME/profile.d $ZMDOT_HOME/
mkdir -p $ZMDOT_HOME/bin/ && cp -R $HOME/bin/zmdot-sync.sh $ZMDOT_HOME/bin/

# ztoken.sh中存放的token不可上传于公网，所以将其覆盖
echo "# 用于存放一些token，如Github API Token，如：" > $ZMDOT_HOME/profile.d/ztokens.sh
echo "export HOMEBREW_GITHUB_API_TOKEN=xxx" >> $ZMDOT_HOME/profile.d/ztokens.sh

