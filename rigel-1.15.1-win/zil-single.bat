@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: this example shows how to mine ZIL on its own with GPU sitting idle between mining windows
:: to dual or triple mine ZIL with other algorithms, check out zil-dual and zil-triple scripts

:: mine to shardpool
rigel.exe -a zil -o zmp+tcp://us1-zil.shardpool.io:3333 -u YOUR_ZIL_WALLET --log-file logs/miner.log

:: mine to crazypool
::rigel.exe -a zil -o stratum+tcp://us.crazypool.org:5005 -u YOUR_ZIL_WALLET --log-file logs/miner.log

pause
