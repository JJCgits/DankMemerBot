@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to ekapool
rigel.exe -a ethashb3 -o stratum+tcp://rth.eu.ekapool.com:18896 -u YOUR_HYP_WALLET -w my_rig --log-file logs/miner.log

:: mine to mining4people
::rigel.exe -a ethashb3 -o stratum+tcp://de.mining4people.com:3454 -u YOUR_HYP_WALLET -w my_rig --log-file logs/miner.log

pause
