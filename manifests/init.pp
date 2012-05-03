class apt {
	
  file {
    "/etc/apt/apt.conf.d/local-recommends":
      owner => root,
      group => root,
      source => "puppet:///modules/apt/etc/apt/apt.conf.d/local-recommends";

    "/etc/apt/apt.conf.d/periodic-updates":
      owner => root,
      group => root,
      source => "puppet:///modules/apt/etc/apt/apt.conf.d/periodic-updates";

    "/etc/apt/sources.list.d/backports.list":
      owner => root,
      group => root,
      notify  => Exec["apt-get update"],
      source => "puppet:///modules/apt/etc/apt/sources.list.d/backports.list";
  }

  exec { "apt-get update":
	  command => 'apt-get update',
	  path        => "/etc/init.d:/usr/bin:/usr/sbin:/bin:/sbin",
	  refreshonly => true
  }


}
