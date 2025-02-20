#!/bin/bash
# Copyright 2025 Bodhi Linux

printf "\n\033[1;33mWARNING:\033[0m For use with Bodhi Linux 7 only.\n\n"
cd bodhi-vice-versa
sed -i 's/MokshaViceVersa/MokshaViceVersa-Icons/g' dark_revolution.edc
./build.sh
sed -i 's/MokshaViceVersa-Icons/MokshaViceVersa/g' dark_revolution.edc
cd ..
