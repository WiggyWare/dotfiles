REM You must run this as Administrator.

REM cd %USERPROFILE%
del %USERPROFILE%\.vimrc
del %USERPROFILE%\.vimrc_my_settings
mklink %USERPROFILE%\.vimrc C:\cygwin\home\%USERNAME%\dotfiles\vimrc
mklink %USERPROFILE%\.vimrc_my_settings C:\cygwin\home\%USERNAME%\dotfiles\vimrc_my_settings
