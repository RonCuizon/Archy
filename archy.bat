@echo off
REM ----------------------------------------------------------------------------
REM
REM This file is maintained by Archy.  Please do not manually modify.
REM
REM         Thanks for your patronage, the Archy Management :)
REM
REM ----------------------------------------------------------------------------

REM Executing if statements that will never be true to work around an issue when running this batch file in Windows that caused a '*' is not recognized as an internal or external command, operable program or batch file error to be displayed in the console output.
if 1 == 2 echo .
if 1 == 3 echo .
if 1 == 4 echo .
"C:\Archy\archyBin\archy-win-2.22.1.exe" %*