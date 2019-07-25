cd %~dp0
set ROSWELL_HOME=%~dp0\roswell\.roswell
%~dp0\roswell\ros.exe setup
move %~dp0\install-emacs.ros %~dp0\roswell\lisp\
%~dp0\roswell\ros.exe install-emacs
pause
