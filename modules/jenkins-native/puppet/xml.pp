#xmlfile_modification{"/etc/config.xml.test" :
#  file    => "/etc/config.xml.test",
#  changes => [
#    'set /hudson/xxx "yyy"',
##    "set /hudson/jdks/jdk/name 'oraclejdk8'",
##    "set /hudson/jdks/jdk[last()+1]/value='/usr/lib/jvm/java-8-oracle'",
#  ],
##  onlyif =>  [
##    "match /hudson/jdks/jdk[last()+1]/[name == 'oraclejdk8'] size < 1"
##  ],
#}

augeas {"/tmp/config.xml":
#  load_path  => '$/usr/share/augeas/lenses/dist',
  lens       => 'Xml.lns',
  incl       => '/tmp/config.xml',
  context    => '/files/tmp/config.xml',
  changes    => [
    'set hudson/abc/#text "new"',
    'set hudson/xxx/#text "yyy"'
  ]
}

#xmlfile_modification{"/tmp/config.xml" :
##  file    => "/tmp/config.xml",
#  changes => [
#    'set /123 "456"',
#    'set /hudson/abc/#text "yyy"',
#    'set /hudson/new/#text "newcontents"',
##    "set /hudson/jdks/jdk/name 'oraclejdk8'",
##    "set /hudson/jdks/jdk[last()+1]/value='/usr/lib/jvm/java-8-oracle'",
#  ],
##  onlyif =>  [
##    "match /hudson/jdks/jdk[last()+1]/[name == 'oraclejdk8'] size < 1"
##  ],
#}
