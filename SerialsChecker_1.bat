@echo off
cls
title Burgies I Serials
echo [90m==========================[97m
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
echo CPU
wmic cpu get serialnumber
wmic cpu get processorid
echo Diskdrive
wmic diskdrive get serialnumber
echo Baseboard
wmic baseboard get serialnumber
wmic baseboard get manufacturer
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo [90m==========================[97m
pause >nul