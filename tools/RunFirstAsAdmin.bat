@ECHO OFF

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
