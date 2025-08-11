#!/usr/bin/env bash
set -e

mkdir -p build

# Build for Linux amd64
GOOS=linux GOARCH=amd64 go build -o build/speculator main.go
tar -czvf build/speculator-linux-amd64.tar.gz -C build speculator
rm build/speculator

# Build for Linux arm64
GOOS=linux GOARCH=arm64 go build -o build/speculator main.go
tar -czvf build/speculator-linux-arm64.tar.gz -C build speculator
rm build/speculator