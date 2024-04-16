@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to woolypooly
rigel.exe -a karlsenhash -o stratum+tcp://pool.woolypooly.com:3132 -u YOUR_KLS_WALLET -w my_rig --log-file logs/miner.log

:: mine to herominers
::rigel.exe -a karlsenhash -o stratum+tcp://de.karlsen.herominers.com:1195 -u YOUR_KLS_WALLET -w my_rig --log-file logs/miner.log

:: mine to baikalmine
::rigel.exe -a karlsenhash -o stratum+tcp://kls.baikalmine.com:2626 -u YOUR_KLS_WALLET -w my_rig --log-file logs/miner.log

:: mine to kryptex
::rigel.exe -a karlsenhash -o stratum+tcp://kls.kryptex.network:7777 -u YOUR_KLS_WALLET -w my_rig --log-file logs/miner.log

:: mine to 2miners
::rigel.exe -a karlsenhash -o stratum+tcp://kls.2miners.com:2020 -u YOUR_KLS_WALLET -w my_rig --log-file logs/miner.log

pause
