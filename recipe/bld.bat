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
if "%CI" == "azure" (
  set "PATH=%PATH:C:\ProgramData\Chocolatey\bin\=%"
)

"%PYTHON%" -m pip install . --no-deps -vv
if errorlevel 1 exit 1
