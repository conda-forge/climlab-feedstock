if "%PY3K"=="0" (
  set CFG=%USERPROFILE%\pydistutils.cfg
  echo [config] > "%CFG%"
  echo compiler=mingw32 >> "%CFG%"
  echo [build] >> "%CFG%"
  echo compiler=mingw32 >> "%CFG%"
  echo [build_ext] >> "%CFG%"
  echo compiler=mingw32 >> "%CFG%"
)

REM remove chocolatey gfortran
if "%CI%" == "azure" (
  rm "C:\ProgramData\Chocolatey\bin\gfortran.exe"
)

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
