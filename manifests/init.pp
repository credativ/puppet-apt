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

    "/etc/apt/sources.list.d/":
      owner => root,
      group => root,
      source => "puppet:///modules/apt/etc/apt/apt.sources.list.d/backports.list";

  }

}
