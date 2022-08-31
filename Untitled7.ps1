# Start transcript
# Import active directory module for running AD cmdlets
install-module azuread
Import-module azuread

#Store the data from UserList.csv in the $List variable
$List = Import-CSV C:\PS\CSV\test.csv

#Loop through user in the CSV
ForEach ($User in $List)
{

#Add the user to the TestGroup1 group in AD
Add-ADGroupMember $User.Group -Members $User.User -ErrorAction Stop -Verbose
}