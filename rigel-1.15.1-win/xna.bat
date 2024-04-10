@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: mine to vipor
rigel.exe -a kawpow --coin xna -o stratum+tcp://pool.vipor.net:5090 -u YOUR_XNA_WALLET -w my_rig --log-file logs/miner.log

:: mine to rplant
::rigel.exe -a kawpow --coin xna -o stratum+tcp://stratum-eu.rplant.xyz:7029 -u YOUR_XNA_WALLET -w my_rig --log-file logs/miner.log

:: mine to kryptex
::rigel.exe -a kawpow --coin xna -o stratum+tcp://xna.kryptex.network:7777 -u YOUR_XNA_WALLET -w my_rig --log-file logs/miner.log

:: mine to 2miners
::rigel.exe -a kawpow --coin xna -o stratum+tcp://xna.2miners.com:6060 -u YOUR_XNA_WALLET -w my_rig --log-file logs/miner.log

pause
