#The command below uses the New-ADOrganizationUnit cmdlet to create a root OU called Department
New-ADOrganizationalUnit -Path 'DC=W2kLab,DC=com' -Name 'Department' -Verbose

#The commands below use the New-ADOrganizationUnit cmdlet to create three new sub 
#OUs called Test, Admin, and IT

New-ADOrganizationalUnit -Path 'OU=Department,DC=W2kLab,DC=com' -Name 'Admin' -Verbose
New-ADOrganizationalUnit -Path 'OU=Department,DC=W2kLab,DC=com' -Name 'Test' -Verbose
New-ADOrganizationalUnit -Path 'OU=Department,DC=W2kLab,DC=com' -Name 'IT' -Verbose

#The commands below use the New-ADOrganizationUnit cmdlet to create two new sub OUs for 
#Users and Computers under the Nest OUs that you created earlier

New-ADOrganizationalUnit -Path 'OU=Admin,OU=Department,DC=W2kLab,DC=com' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=Admin,OU=Department,DC=W2kLab,DC=com' -Name 'Computers' -Verbose

New-ADOrganizationalUnit -Path 'OU=Test,OU=Department,DC=W2kLab,DC=com' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=Test,OU=Department,DC=W2kLab,DC=com' -Name 'Computers' -Verbose

New-ADOrganizationalUnit -Path 'OU=IT,OU=Department,DC=W2kLab,DC=com' -Name 'Users' -Verbose
New-ADOrganizationalUnit -Path 'OU=IT,OU=Department,DC=W2kLab,DC=com' -Name 'Computers' -Verbose