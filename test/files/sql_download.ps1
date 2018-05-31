if (!(Test-Path "C:\installers\SQLEXPRADV_x64_ENU.exe")){
write-host "Downloading mssql..."

$url = "https://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPRADV_x64_ENU.exe"
$clnt = New-Object System.Net.WebClient
$clnt.DownloadFile($url,"C:\installers\SQLEXPRADV_x64_ENU.exe")
}
cd C:\installers
.\SQLEXPRADV_x64_ENU.exe /extract: "c:\mssql" /Q

