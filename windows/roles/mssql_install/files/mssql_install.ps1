param(
   [Parameter(Position=0)]
   $SQLInstanceName
,
   [Parameter(Position=1)]
   $SqlUser
)

if (!(Test-Path "C:\test\SSMS-Setup-ENU.exe")){
write-host "Downloading SSMS..."

$url = "https://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPRADV_x64_ENU.exe"
$clnt = New-Object System.Net.WebClient
$clnt.DownloadFile($url,"C:\installers\SQLEXPRADV_x64_ENU.exe")
}
cd C:\installers
.\SQLEXPRWT_x64_ENU.exe /extract: "c:\mssql" /Q
cd C:\mssql
.\setup.exe /q /ACTION=Install /FEATURES=SQL /INSTANCENAME=$SQLInstanceName /SQLSVCACCOUNT=$SqlUser /SQLSVCPASSWORD="Password@123" /SQLSYSADMINACCOUNTS=$SqlUser /AGTSVCACCOUNT="NT AUTHORITY\Network Service"  /UpdateEnabled=False /IACCEPTSQLSERVERLICENSETERMS  
