call codegen\generateNodeJsSDK ||  goto :error

call codegen\generateNetSDK ||  goto :error

call codegen\generatePhpSDK ||  goto :error

call codegen\generateRubySDK ||  goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%








