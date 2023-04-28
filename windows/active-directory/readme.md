# Windows Active Directory notes

### Links to resources
- [Active Directory : Design Considerations and Best Practices](https://social.technet.microsoft.com/wiki/contents/articles/52587.active-directory-design-considerations-and-best-practices.aspx)
- [21 Effective Active Directory Management Tips](https://activedirectorypro.com/active-directory-management-tips/)
- [ActiveDirectory Commands List](https://learn.microsoft.com/en-us/powershell/module/activedirectory/?view=windowsserver2022-ps)

### Notes

### Commands

Get a list of all users in the Domain

```
Get-AdUser -Filter *
```

Get users from a specific OU

```
Get-ADUser -Filter * -SearchBase "OU=Finance,OU=UserAccounts,DC=FABRIKAM,DC=COM"
```

Get a list of filtered users by pattern

```
Get-ADUser -Filter 'Name -like "*SvcAccount"' | Format-Table Name,SamAccountName -A
```

Get all properties of a specific user 

```
Get-ADUser -Identity !SamAccountName! -Properties *
```

### Scripts
