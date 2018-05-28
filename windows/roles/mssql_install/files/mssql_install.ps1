param(
   [Parameter(Position=0)]
   $SQLInstanceName
,
   [Parameter(Position=1)]
   $SqlUser
)

cd C:\test
.\setup.exe /q /ACTION=Install /FEATURES=SQL /INSTANCENAME=$SQLInstanceName /SQLSVCACCOUNT=$SqlUser /SQLSVCPASSWORD="Password@123" /SQLSYSADMINACCOUNTS=$SqlUser /AGTSVCACCOUNT="NT AUTHORITY\Network Service"  /UpdateEnabled=False /IACCEPTSQLSERVERLICENSETERMS  
