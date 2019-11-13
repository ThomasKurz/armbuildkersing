#!/bin/#!/usr/bin/env bash

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CC=arm-linux-gnueabihf-gcc
set -e
echo "Make mqtt"
cd paho.mqtt.embedded-c
git pull
make
