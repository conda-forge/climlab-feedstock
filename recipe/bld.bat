@echo on

dir %RECIPE_DIR%

echo %LIB%

set FC=%BUILD_PREFIX%\Library\bin\flang.exe

"%PYTHON%" -m pip install . --no-deps -vv

if errorlevel 1 exit 1
