#!/bin/bash
python3 mc-env-settings.py ".mc-velocity.prod.env"
java -XX:InitialRAMPercentage=15.0 -XX:MaxRAMPercentage=90.0 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:MaxInlineLevel=15 -Dterminal.jline=false -Dterminal.ansi=true -jar velocity.jar 
python3 mc-env-settings.py ".mc-velocity.prod.env" --reverse
