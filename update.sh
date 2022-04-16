#!/usr/bin/env bash

git submodule update --remote --force
git add -A
git commit -m "Update upstream repositories"
git push
