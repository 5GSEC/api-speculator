#!/usr/bin/env bash
set -e

mkdir -p build

# Build for Linux amd64
GOOS=linux GOARCH=amd64 go build -o build/speculator main.go

# Package into tar.gz
tar -czvf build/speculator-linux-amd64.tar.gz -C build speculator
