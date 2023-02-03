@echo off
rem Отправка файла или директории в rar формате в Telegram.
rem Copyright Egor Vasyakin <egor@evas-php.com>, MIT License

set WINRAR_PATH= Путь к WinRAR\Rar.exe"
set TELEGRAM_PATH="Путь к Telegram Desktop\Telegram.exe"

set TMP_DIR=%~dp0
set FOLDER=%1
set NAME=%2

set LOG_FILE="%TMP_DIR%log.txt"

set RAR_IN=%FOLDER%
set RAR_OUT="%TMP_DIR%%NAME%.rar"

rem echo FOR %%a IN ("./*.rar") DO DEL "%%a" >>%LOG_FILE%
FOR %%a IN ("./*.rar") DO DEL "%%a" | echo DEL "%%a" >> %LOG_FILE%

rem echo call %WINRAR_PATH% a %RAR_OUT% -ep1 %RAR_IN% >>%LOG_FILE%
call %WINRAR_PATH% a %RAR_OUT% -ep1 %RAR_IN%
rem echo call %TELEGRAM_PATH% -sendpath %RAR_OUT% >>%LOG_FILE%
call %TELEGRAM_PATH% -sendpath %RAR_OUT%

rem echo --- >>%LOG_FILE%
