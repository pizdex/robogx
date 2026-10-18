#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <start_offset> <length>" >&2
    echo "Example: $0 0x8000 0x100" >&2
    exit 1
fi

OBJDUMP="$DEVKITARM/bin/arm-none-eabi-objdump -D -bbinary -marmv4t -Mforce-thumb"
START=$(( $1 ))
STOP=$(( $1 + $2 ))
OPTIONS="--start-address=$START --stop-address=$STOP"

$OBJDUMP $OPTIONS baserom.gba > baserom.dump
$OBJDUMP $OPTIONS robogx.gba > robogx.dump
diff -u baserom.dump robogx.dump
