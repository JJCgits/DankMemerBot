@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r32.0` - maximum impact on the primary algorithm

:: erg + pyi
rigel.exe -a autolykos2+pyrinhash ^
    -o [1]stratum+tcp://erg.kryptex.network:7777     -u [1]YOUR_ERG_WALLET ^
    -o [2]stratum+tcp://de.pyrin.herominers.com:1177 -u [2]YOUR_PYI_WALLET ^
    -w my_rig --log-file logs/miner.log

pause
