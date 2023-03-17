## powershell primer

Task

Condition

Standard

***

# Exploring Powershell Cmdlets

`get-verb` shows the list of approved and reccomended verbs for all cmdlets and how you should build your cmdlets

`get-command` shows all of the avalbile commands you have avalible on path

`get-member` shows object properties and methods that are avalible for a command

`get-help` the all powerful "man page" of powershell. 

## Hands on exploration learning
```powershell
> Get-Command -Name Get-Process

CommandType     Name              Version    Source
-----------     ----              -------    ------
Cmdlet          Get-Process       7.0.0.0    Microsoft.PowerShell.Management
```

### Now expand the scope with a wild card and retrieve any command with "Process" in its cmdlet Name property

```powershell
> Get-Command -Name *-Process

CommandType     Name              Version    Source
-----------     ----              -------    ------
Cmdlet          Debug-Process     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Process       7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Start-Process     7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Stop-Process      7.0.0.0    Microsoft.PowerShell.Management
Cmdlet          Wait-Process      7.0.0.0    Microsoft.PowerShell.Management
```

### Use helper cmdlets to drill down into objects

**Select-Object**
```powershell
> Get-Command | Select-Object -Last 5

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Write-Information                                  3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Output                                       3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Progress                                     3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Verbose                                      3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Write-Warning                                      3.1.0.0    Microsoft.PowerShell.Utility
```

Filter Results Table
```powershell
Get-Command | Select-Object -Last 5 -Property Name, Version

Name              Version
----              -------
Write-Information 3.1.0.0
Write-Output      3.1.0.0
Write-Progress    3.1.0.0
Write-Verbose     3.1.0.0
Write-Warning     3.1.0.0
```

Drill down into a cmdlet object
```powershell
> Get-Command Write-Information | format-list


Name             : Write-Information
CommandType      : Cmdlet
Definition       :
                   Write-Information [-MessageData] <Object> [[-Tags] <string[]>] [<CommonParameters>]

Path             :
AssemblyInfo     :
DLL              : C:\WINDOWS\Microsoft.Net\assembly\GAC_MSIL\Microsoft.PowerShell.Commands.Utility\v4.0_3.0.0.0__31bf3856ad364e35\Microsoft.PowerShell.Commands.Utility.dll
HelpFile         : Microsoft.PowerShell.Commands.Utility.dll-Help.xml
ParameterSets    : {[-MessageData] <Object> [[-Tags] <string[]>] [<CommonParameters>]}
ImplementingType : Microsoft.PowerShell.Commands.WriteInformationCommand
Verb             : Write
Noun             : Information
```

**Where-Object**
filter returned objects based on values of the properties
e.g. get all running process
```powershell
> Get-Process | Where-Object {$_.ProcessName -like "p*"}

Handles  NPM(K)    PM(K)      WS(K)     CPU(s)     Id  SI ProcessName
-------  ------    -----      -----     ------     --  -- -----------
   5458     104    74000     138264       3.03  15036   1 PhoneExperienceHost
    955      42   170148     194300       7.81  16788   1 powershell
```
