del /S /Q "c:\tmp\cpp" || goto :error
java -jar codegen\swagger-codegen-cli.jar generate -i spec\asposeforcloud_word.json -l cpprest -t codegen\Templates\cpp -o c:/tmp/cpp/ -c codegen\config.json || goto :error

del /S /Q "SDKs\cpp\sources" || goto :error

xcopy "c:\tmp\cpp" "SDKs\cpp\sources" /E || goto :error