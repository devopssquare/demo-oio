$jenkins_configfile = "/var/lib/jenkins/config.xml"

augeas {"Add JDK8":
  lens       => 'Xml.lns',
  incl       => $jenkins_configfile,
  context    => "/files/$jenkins_configfile",
  changes    => [
    'set hudson/jdks/jdk/name/#text "oraclejdk8"',
    'set hudson/jdks/jdk/home/#text "/usr/lib/jvm/java-8-oracle"',
  ]
}
