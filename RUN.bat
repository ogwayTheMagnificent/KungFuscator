@echo off
setlocal enabledelayedexpansion
title KungFuscator v0.1.0 By OgWay#9999
color 0a
echo Welcome to KungFuscator!
echo DISCORD: hfKC7kZNNM
pause
echo To Obfuscate, Please put your lua script or roblox lua script in input.lua. I'll open it up for you, but first, click any button to continue
pause
@echo off
input.lua
@echo off
echo Whenever your ready to obfuscate, save and close the file and press any key to continue to start obfuscating
pause
lua compiler.lua
echo Obfuscation process done!
pause
set start_time=!time!
set end_time=!time!
set /A execution_time=(1%end_time:~0,2%-100)*3600 + (1%end_time:~3,2%-100)*60 + (1%end_time:~6,2%-100) - ((1%start_time:~0,2%-100)*3600 + (1%start_time:~3,2%-100)*60 + (1%start_time:~6,2%-100))
color 0a
echo Execution time: %execution_time% seconds
echo Press any key to exit! Run again to obfuscate another lua script
pause
exit