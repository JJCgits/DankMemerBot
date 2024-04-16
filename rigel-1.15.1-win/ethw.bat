@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to woolypooly
rigel.exe -a ethash --coin ethw -o stratum+ssl://pool.woolypooly.com:3096 -u YOUR_ETHW_WALLET -w my_rig --log-file logs/miner.log

:: mine to 2miners
::rigel.exe -a ethash --coin ethw -o stratum+ssl://ethw.2miners.com:12020 -u YOUR_ETHW_WALLET -w my_rig --log-file logs/miner.log

pause
