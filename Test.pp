
$base_dir = 'C:/source/puppetconf-2016/temp/base'
$dnc_dir = "${base_dir}/dnc"
$website_dir = "${base_dir}/website"

# Init
# -----
#file { $base_dir:
#  ensure => directory,
#} ->


# DNC Install
# -----

# Instal DNC SDK in a system default location
#dot_net_core::install_sdk { 'test':
#  #destination => $dnc_dir
#  logoutput => true,
#}


include puppetconf_website

# Website Install
# -----
puppetconf_website::install { 'demosite' :
  destination => $website_dir,
}



# REstore command, look for the project.lock.json file

#---- IIS Hosted

#dot_net_core::install_iis { "Default":
#}

