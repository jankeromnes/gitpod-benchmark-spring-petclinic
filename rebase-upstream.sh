#!/usr/bin/env bash
set -e

git pull --rebase https://github.com/spring-projects/spring-petclinic main
git push -f origin main
