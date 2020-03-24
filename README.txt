1. Open SQL Server Management Studio ( run as adminitrator)
2. Click connect, right click on Databases -> attach...
3. Click add and select the file to attach ( mdf file )
4. Open project in visual studio
5. Change connectionString in WebConfig with format
`Data Source=myServerAddress;Initial Catalog=myDataBase;User Id=myUsername;Password=myPassword;`
==> Run