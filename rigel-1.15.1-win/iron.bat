@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to herominers (mainnet)
rigel.exe -a fishhash -o stratum+tcp://de.ironfish.herominers.com:1145 -u YOUR_IRON_WALLET -w my_rig --log-file logs/miner.log

:: mine to herominers (testnet)
::rigel.exe -a fishhash -o stratum+tcp://de.fishhash.herominers.com:1145 -u YOUR_IRON_WALLET -w my_rig --log-file logs/miner.log

:: mine to kryptex
::rigel.exe -a fishhash -o stratum+tcp://iron.kryptex.network:7777 -u YOUR_IRON_WALLET -w my_rig --log-file logs/miner.log

pause
