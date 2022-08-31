Set-ExecutionPolicy  RemoteSigned 
$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid" -Credential $Usercredential -Authentication "Basic" -AllowRedirection
Import-PSSession $exchangeSession -DisableNameChecking

$ifle = Import-CSv -Path "C:\Test\01.csv" 

foreach ($Minsk in $file)

{Add-DistributionGroupMember -identity "role-bu_phoenix-locqah-qa" -member $line.userPrincipalName}
Sign in to Outlook