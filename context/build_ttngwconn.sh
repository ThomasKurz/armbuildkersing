#!/bin/#!/usr/bin/env bash

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CC=arm-linux-gnueabihf-gcc
set -e
echo "Make ttn-gateway-connector"
cd ttn-gateway-connector
git pull
cp config.mk.in config.mk
make clean
make
