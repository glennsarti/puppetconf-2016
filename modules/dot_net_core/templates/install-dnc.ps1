Write-Verbose "Install DNC"

$ErrorActionPreference = 'Stop'
$VerbosePreference = 'Continue'

# Also convert linux path seperator to Windows
$SourceFile = '<%= @sourcefile %>'.Replace('/','\')
$DestinationDir = '<%= @destdir %>'.Replace('/','\')

Write-Verbose "Source = $SourceFile"
Write-Verbose "Destination = $DestinationDir"

if (Test-Path -Path $DestinationDir) {
  Write-Verbose "Clearing out $DestingDir ..."
  Remove-Item -Path $DestinationDir -Force -Recurse -Confirm:$false | Out-Null
}

Write-Verbose "Expanding the installation archive ..."

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($SourceFile, $DestinationDir)

Exit 0