$url = "https://go.microsoft.com/fwlink/?linkid=870039"
$clnt = New-Object System.Net.WebClient
$clnt.DownloadFile($url,"C:\test\SSMS-Setup-ENU.exe")
