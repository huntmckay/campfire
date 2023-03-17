# powershell primer

Task

Condition

Standard


# Exploring Powershell Cmdlets (pronouced Command Lit/let)

`get-verb` shows the list of approved and reccomended verbs for all cmdlets and how you should build your cmdlets

`get-command` shows all of the avalbile commands you have avalible on path

`get-member` shows object properties and methods that are avalible for a command

`get-help` the all powerful "man page" of powershell. 

## Hands on exploration learning
``Get-Command -Name Get-Process``
```powershell
CommandType     Name              Version    Source
-----------     ----              -------    ------
Cmdlet          Get-Process       7.0.0.0    Microsoft.PowerShell.Management
```

Now expand the scope with a wild card and retrieve any command with "Process" in its cmdlet Name property

`Get-Command -Name *-Process`
```powershell
CommandType     Name              Version    Source
-----------     ----              -------    ------
Cmdlet          Debug-Process     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Process       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Start-Process     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Stop-Process      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Wait-Process      7.0.0.0    Microsoft.PowerShell.Management
```
