cd %~dp0
set ROSWELL_HOME=%~dp0\roswell\.roswell
set PATH=%~dp0\emacs\bin\;%~dp0\roswell\
%~dp0\roswell\ros.exe emacs %1

pause
