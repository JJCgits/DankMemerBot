@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to zkprovers
rigel.exe -a abelian -o stratum+ssl://pool-us.zkprovers.com:57778 -u YOUR_POOL_USERNAME -p YOUR_POOL_PASSWORD -w my_rig --log-file logs/miner.log

:: mine to abelpool
::rigel.exe -a abelian -o stratum+ssl://global-service.abelpool.io:27778 -u YOUR_POOL_USERNAME -p YOUR_POOL_PASSWORD -w my_rig --log-file logs/miner.log

pause
