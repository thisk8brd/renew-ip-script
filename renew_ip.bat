@ECHO OFF 
:: This batch file reveals OS, hardware, and networking configuration.
TITLE System INFO and ip reset
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO RESETING IP
ECHO ============================
ipconfig /release
ipconfig /renew
ipconfig /flushdns
ECHO ============================
ECHO Agora vai porra
ECHO ============================