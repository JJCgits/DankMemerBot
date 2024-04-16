@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to 2miners
rigel.exe -a kawpow --coin rvn -o stratum+tcp://rvn.2miners.com:6060 -u YOUR_RVN_WALLET -w my_rig --log-file logs/miner.log

:: mine to ravenminer
::rigel.exe -a kawpow --coin rvn -o stratum+tcp://eu.ravenminer.com:3838 -u YOUR_RVN_WALLET -w my_rig --log-file logs/miner.log

:: mine to kryptex
::rigel.exe -a kawpow --coin rvn -o stratum+tcp://rvn.kryptex.network:7777 -u YOUR_RVN_WALLET -w my_rig --log-file logs/miner.log

pause
