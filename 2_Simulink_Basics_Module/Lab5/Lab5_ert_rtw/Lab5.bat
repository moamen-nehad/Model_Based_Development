
set MATLAB=C:\Program Files\MATLAB2023\R2023a

cd .

if "%1"=="" ("C:\PROGRA~1\MATLAB~2\R2023a\bin\win64\gmake"  -f Lab5.mk all) else ("C:\PROGRA~1\MATLAB~2\R2023a\bin\win64\gmake"  -f Lab5.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1