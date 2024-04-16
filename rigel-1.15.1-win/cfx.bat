@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to woolypooly
rigel.exe -a octopus -o stratum+tcp://pool.woolypooly.com:3094 -u YOUR_CFX_WALLET -w my_rig --log-file logs/miner.log

:: mine to herominers
::rigel.exe -a octopus -o stratum+tcp://de.conflux.herominers.com:1170 -u YOUR_CFX_WALLET -w my_rig --log-file logs/miner.log

:: mine to kryptex
::rigel.exe -a octopus -o stratum+tcp://cfx.kryptex.network:7777 -u YOUR_CFX_WALLET -w my_rig --log-file logs/miner.log

pause
