$PSSession = New-PSSession -ComputerName '192.168.200.50' -Credential (Get-Credential 'Administrator')


Invoke-Command -Session $PSSession -ScriptBlock {
  & 'C:\Program Files\Puppet Labs\Puppet\bin\environment.bat'

  & puppet --version

  New-PSDrive -Name "P" -root '\\192.168.200.1\c$' -PSProvider FileSystem -Credential (Get-Credential '192.168.200.1\spektor')

  & Net use p: "\\192.168.200.1\c`$"

  function runpup {
    & puppet apply p:\Source\puppetconf-2016\Test.pp --modulepath p:\Source\puppetconf-2016\modules\ --debug
  }
}

Enter-PSSession $PSSession