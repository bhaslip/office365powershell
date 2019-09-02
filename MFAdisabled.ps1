Connect-MsolService
Get-MsolUser -all | 
    select DisplayName,UserPrincipalName,@{N="MFA Status"; E={ 
        if($_.StrongAuthenticationRequirements.Count -ne 0){ 
            $_.StrongAuthenticationRequirements[0].State
        } else { 
            'Disabled'}
        }
    }