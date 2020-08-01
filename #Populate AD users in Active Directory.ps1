#Populate AD users in Active Directory

Generate 5 new Admin users
    #Department : Admin
    #State : FL
    #Office : Miami
    
    $count = 6
    $nameconvention = 'Admin_user'
    $num = 1
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    New-ADUser -Name $account -Department 'Admin' -State 'FL' -Office 'Miami' -Path 'OU=Users,OU=Admin,OU=Department,DC=W2kLab,DC=com' -Verbose
    
    $num += 1
    }
    
    #Generate 5 new IT users
    #Department : IT
    #State : CA
    #Office : San Francisco
    $count = 11
    $num = 6
    $nameconvention = 'IT_user'
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    
    New-ADUser -Name $account -Department 'IT' -State 'CA' -Office 'San Francisco' -Path 'OU=Users,OU=IT,OU=Department,DC=W2kLab,DC=com' -AccountPassword (Read-Host -AsSecureString "Input User Password") -Enabled $True -Verbose
    
    $num += 1
    }
    
    #Generate 5 new IT users
    #Department : IT
    #State : NY
    #Office : Brooklyn
    $count = 17
    $num = 12
    $nameconvention = 'IT_user'
    while ($num -ne $count){
    $account = ($nameconvention + $num)
    
    New-ADUser -Name $account -Department 'IT' -State 'NY' -Office 'Brooklyn' -Path 'OU=Users,OU=IT,OU=Department,DC=W2kLab,DC=com' -Verbose
    
    $num += 1
    }