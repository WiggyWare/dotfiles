REM You must run this as Administrator.

REM cd %USERPROFILE%
del %USERPROFILE%\.vimrc
del %USERPROFILE%\.vimrc_my_settings
rmdir %USERPROFILE%\.vim
mklink /H %USERPROFILE%\.vimrc C:\cygwin\home\%USERNAME%\dotfiles\vimrc
mklink /H %USERPROFILE%\.vimrc_my_settings C:\cygwin\home\%USERNAME%\dotfiles\vimrc_my_settings
mklink /J %USERPROFILE%\.vim C:\cygwin\home\%USERNAME%\.vim
