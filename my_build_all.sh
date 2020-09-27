#!/bin/bash

set -x

# Use -Os for size-optimised.
./build_all.py --clean --arch arm --chip cortex-m4 --board stm32f4-discovery \
	--cc arm-none-eabi-gcc --ld arm-none-eabi-gcc \
	--cflags="-c -g -gdwarf-2 -O2 -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mfloat-abi=soft -mthumb" \
	--ldflags="-T/Users/brunoflores/devel/embench-iot/config/arm/boards/stm32f4-discovery/STM32F407XG.ld -O2 -g -gdwarf-2 -lm -mcpu=cortex-m4 -mfloat-abi=soft -specs=nosys.specs -lm -lc"
# -Wl,-gc-sections
