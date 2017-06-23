::Batch Script to switch java version to-and-from 1.7 and 1.8
::created because I am switching between IntelliJ and Eclipse
::created on 22/6/2017 by Rlexsu

for /f "skip=2 tokens=2,*" %%a in ('REG QUERY "HKLM\SOFTWARE\JavaSoft\Java Runtime Environment" /v CurrentVersion') do set "_ver=%%b"

if "%_ver%" == "1.7" (REG ADD "HKLM\SOFTWARE\JavaSoft\Java Runtime Environment" /f /v CurrentVersion /t REG_SZ /d 1.8)
if "%_ver%" == "1.8" (REG ADD "HKLM\SOFTWARE\JavaSoft\Java Runtime Environment" /f /v CurrentVersion /t REG_SZ /d 1.7)