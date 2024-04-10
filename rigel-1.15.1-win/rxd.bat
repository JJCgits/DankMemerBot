@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to vipor
rigel.exe -a sha512256d -o stratum+tcp://pool.vipor.net:5066 -u YOUR_RXD_WALLET -w my_rig --log-file logs/miner.log

:: mine to woolypooly
::rigel.exe -a sha512256d -o stratum+tcp://pool.woolypooly.com:3122 -u YOUR_RXD_WALLET -w my_rig --log-file logs/miner.log

pause
