# Import ActiveDirectory Powershell Module
Import-Module ActiveDirectory

# Store CSV fields in the variable $ADUsers
$ADUsers = Import-Csv C:\newUsers.csv -Delimiter ";"

foreach ($User in $ADUsers){
    $firstName = $User.Name
    $lastName = $User.Surname
    $fullName = $User.'Display Name'
    $email = $User.Mail
    $department = $User.Department
    $password = $User.Password
    $OU = $User.OU
    $username = $firstName.ToLower()+"."+$lastName.ToLower()

    # Check if user already exist in the Domain
    if (Get-AdUSer -Filter {SamAccountName -eq $username}){
        # User already exist
        Write-Warning "A user with username $username already exist in the domain"
    }else {
        # User does not exist
        # Add it  to the domain
        New-ADUser `
            -SamAccountName $username `
            -UserPrincipalName $email `
            -Name "$firstName $lastName" `
            -GivenName $firstName `
            -Surname $lastName `
            -DisplayName $fullName `
            -Enabled $True `
            -Path $OU `
            -EmailAddress $email `
            -Department $department `
            -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) -ChangePasswordAtLogon $True

            # If user is created successfully
            Write-Host "The user $username was created successfully" -ForegroundColor Magenta
    }
}

Read-Host -Prompt "Press Enter to exit"