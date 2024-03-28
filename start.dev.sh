#!/bin/bash
python3 mc-env-settings.py ".mc-velocity.dev.env"
java -XX:InitialRAMPercentage=5.0 -XX:MaxRAMPercentage=10.0 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:MaxInlineLevel=15 -Dterminal.jline=false -Dterminal.ansi=true -Dvelocity.packet-decode-logging=true -jar velocity.jar 
python3 mc-env-settings.py ".mc-velocity.dev.env" --reverse
