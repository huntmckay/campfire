
#ansible [When] Condition: `ansible_os_family`

### Example

## Common use
```yaml    

    when: ansible_os_family == "CentOS"
    when: ansible_os_family == "Redhat"
    when: ansible_os_family == "Darwin"
    when: ansible_os_family == "Debian"
    when: ansible_os_family == "Windows"
```

## Lists
```python
OS_FAMILY = dict(
            RedHat = 'RedHat',
            Fedora = 'RedHat', 
            CentOS = 'RedHat', 
            Scientific = 'RedHat',
            SLC = 'RedHat', 
            Ascendos = 'RedHat', 
            CloudLinux = 'RedHat', 
            PSBM = 'RedHat',
            OracleLinux = 'RedHat', 
            OVS = 'RedHat', 
            OEL = 'RedHat', 
            Amazon = 'RedHat',
            XenServer = 'RedHat', 
            Ubuntu = 'Debian', 
            Debian = 'Debian', 
            SLES = 'Suse',
            SLED = 'Suse', 
            OpenSuSE = 'Suse', 
            SuSE = 'Suse', 
            Gentoo = 'Gentoo',
            Archlinux = 'Archlinux', 
            Mandriva = 'Mandrake', 
            Mandrake = 'Mandrake',
            Solaris = 'Solaris', 
            Nexenta = 'Solaris',  
            OmniOS = 'Solaris', 
            OpenIndiana = 'Solaris',
            SmartOS = 'Solaris', 
            AIX = 'AIX', 
            Alpine = 'Alpine', 
            MacOSX = 'Darwin',
            FreeBSD = 'FreeBSD', 
            HPUX = 'HP-UX'
```
# ansible_distrobution | ansible_facts['distrobution']

### Example

## Common use
```yaml    
    when: ansible_distribution == 'CentOS' or ansible_distribution == 'Red Hat Enterprise Linux'
    when: ansible_distribution == 'Debian' or ansible_distribution == 'Ubuntu'
```

## Also allows for distrobution specific arguments
```yaml
    when: ansible_distribution == 'CentOS' and ansible_distribution_version == '6.4'
    when: ansible_distribution == 'Ubuntu' and ansible_distribution_release == 'precise'
    when: ansible_distribution == 'Debian' and ansible_distribution_version == '7'
    when: ansible_os_family == "RedHat" and ansible_lsb.major_release|int >= 5
```