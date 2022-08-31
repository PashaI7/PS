$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid" -Credential $Usercredential -Authentication "Basic" -AllowRedirection
Import-PSSession $exchangeSession -DisableNameChecking

$Users = Get-ADuser -SearchBase "OU=BU Phoenix,DC=azure.solbeg.com,DC=local" -Filter * -Properties Department,SamAccountName
    ForEach ($User in $Users){
        Add-ADGroupMember -Identity $User.department -Members $User.samaccountname
        }

$file = Import-CSv -Path "C:\PS\CSV\test.csv"

foreach ($line in $file)

{Add-DistributionGroupMember -identity "role-bu_phoenix-locqah-qa" -member $line.userPrincipalName}
Sign in to Outlook