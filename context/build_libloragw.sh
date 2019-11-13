#!/bin/#!/usr/bin/env bash

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

set -e
echo "Make libloragw"
cd lora_gateway/libloragw
git pull
make
