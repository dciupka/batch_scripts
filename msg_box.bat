@echo off
setlocal

set "message=Text jaki jest wyświelany!"
powershell -Command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null; [System.Windows.Forms.MessageBox]::Show('%message%', 'Confirmation', 'OK', 'Question')"
set "result=%errorlevel%"

if %result% equ 1 (
    echo User clicked OK.
) else (
    echo User closed the message box.
)

endlocal
