@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r64` - maximum impact on the primary algorithm

:: cfx + pyi
rigel.exe -a octopus+pyrinhash ^
    -o [1]stratum+tcp://de.conflux.herominers.com:1170 -u [1]YOUR_CFX_WALLET ^
    -o [2]stratum+tcp://de.pyrin.herominers.com:1177   -u [2]YOUR_PYI_WALLET ^
    -w my_rig --log-file logs/miner.log

pause
