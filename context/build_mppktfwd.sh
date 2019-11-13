#!/bin/#!/usr/bin/env bash

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

set -e
echo "Make mp_pkt_fwd"
cd packet_forwarder/mp_pkt_fwd
git pull
make
arm-linux-gnueabihf-strip /kersing/packet_forwarder/mp_pkt_fwd/mp_pkt_fwd
