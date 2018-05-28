#If SSMS not present, download
if (!(Test-Path "C:\test\SSMS-Setup-ENU.exe")){
write-host "Downloading SSMS..."

$url = "https://go.microsoft.com/fwlink/?linkid=870039"
$clnt = New-Object System.Net.WebClient
$clnt.DownloadFile($url,"C:\test\SSMS-Setup-ENU.exe")
}
& "C:\test\SSMS-Setup-ENU.exe" /Install /Quiet /Norestart /Logs log.txt | Out-Null
