@echo off
dir /s/b content\*.cpp > dir.txt

for /f "delims=," %%i in (dir.txt) do (
  echo %%i
  cl @RESP_RELEASE %%i 
)

copy *.dll compiled_release\

del *.ilk
del *.pdb
del *.lib
del *.exp
del *.obj
del *.dll
