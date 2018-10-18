class apache::config (
	String $configsource = lookup({"name" => "apache.configsource", "default_value" => ""}),
	String $configfile = lookup({"name" => "apache.configfile", "default_value" => ""}),
	String $vhostsource = lookup({"name" => "apache.vhostsource", "default_value" => ""}),
	String $vhostfile = lookup({"name" => "apache.vhostfile", "default_value" => ""})
	) {
	file { 'config-file':
		path => $configfile,
		ensure => file,
		source => $configsource,
	}

	file { 'config-file':
		path => $vhostfile,
		ensure => file,
		source => template($vhostsource),
	}
}
