@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to 2miners
rigel.exe -a etchash -o stratum+ssl://etc.2miners.com:11010 -u YOUR_ETC_WALLET -w my_rig --log-file logs/miner.log

:: mine to f2pool
::rigel.exe -a etchash -o stratum+tcp://etc.f2pool.com:8118 -u YOUR_ETC_WALLET -w my_rig --log-file logs/miner.log

pause
