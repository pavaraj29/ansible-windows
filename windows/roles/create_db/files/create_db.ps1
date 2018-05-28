param(
   [Parameter(Position=0)]
   $SQLInstanceName
,
   [Parameter(Position=1)]
   $dbName
)

#Create DB
write-host "creating DB, table & stored procedure"
Invoke-Sqlcmd -Query "CREATE DATABASE [$dbName]" -ServerInstance "localhost\$SQLInstanceName" 

#Create table
Invoke-Sqlcmd -ServerInstance "localhost\$SQLInstanceName" -Query "USE [$dbName]

CREATE TABLE table1 (
    FirstName varchar(25),
    LastName varchar(25),
    PhoneNumber varchar(15),
    EmailAddress varchar(25),
    CreateDate varchar(25) 
);" 

Invoke-Sqlcmd -ServerInstance "localhost\$SQLInstanceName" -Query "USE [$dbName]
GO
CREATE PROCEDURE dbo.insertdata @FirstName varchar(25), @LastName varchar(25), 
@PhoneNumber varchar(15), @EmailAddress varchar(25), @CreateDate datetime

AS

SET NOCOUNT ON

-- 1 - Declare variables

-- 2 - Initialize variables

-- 3 - Execute INSERT command
INSERT INTO dbo.table1
           ([FirstName]
           ,[LastName]
           ,[PhoneNumber]
           ,[EmailAddress]
           ,[CreateDate])
     VALUES
           (@FirstName
           ,@LastName
           ,@PhoneNumber
           ,@EmailAddress
           ,@CreateDate)
GO" 

#Executing stored procedure

Invoke-Sqlcmd -ServerInstance "localhost\$SQLInstanceName" -Query "USE [$dbName]
GO
EXECUTE dbo.insertdata
   @FirstName = 'user1'
  ,@LastName = 'lastname1'
  ,@PhoneNumber = '8129473841'
  ,@EmailAddress = 'user1.lastname1@happiestminds.com'
  ,@CreateDate = '2018-05-08'
GO"
