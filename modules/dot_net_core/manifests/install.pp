define dot_net_core::install(
  $destination = '',
  $arch = 'x64',
  $version = '1.0.0',
  $logoutput = false,
) {

  $sourcefile = "${get_module_path('dot_net_core')}/files/dotnet-win-${arch}.${version}.zip"

  if ($destination == '') {
    $destdir = "${os[windows][system32]}/dotnetcore"
  }
  else {
    $destdir = $destination
  }

  exec { "dot_net_core_installsdk_$destdir":
    command => template('dot_net_core/install-dnc.ps1'),
    creates => "${destdir}/dotnet.exe",
    provider => powershell,
    logoutput => $logoutput,
  }

  if ($destination == '') {
    windows_env { "dot_net_core_path_$destdir":
      variable => 'PATH',
      value => regsubst($destdir,'\/','\\'), # Use Windows native slashes
      subscribe => Exec["dot_net_core_installsdk_$destdir"],
    }
  }
}