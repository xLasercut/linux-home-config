#!/bin/bash

# setup .ssh perms
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
chmod 644 ~/.ssh/*.pub

# copy zsh config
cp ./.zshrc ~
