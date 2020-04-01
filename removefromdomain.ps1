$dc = "Domain"
$pw = "Password" | ConvertTo-SecureString -asPlainText -Force
$usr = "$dc\user"
$pc = Get-Content -Path C:\Computers.txt # Specify the path to the computers list.
$creds = New-Object System.Management.Automation.PSCredential($usr,$pw)
Remove-Computer -ComputerName $pc -LocalCredential $pc\admin -DomainName $dc -Credential $creds -Restart -Force
