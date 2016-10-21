name             'gcc-arm-embedded'
maintainer       'Free Beachler'
maintainer_email 'longevitysoft@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures gcc-arm-embedded'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'
depends          'build-essential'
depends          'apt'
depends          'ark'

source_url 'https://github.com/tenaciousRas/gcc-arm-embedded'
issues_url 'https://github.com/tenaciousRas/gcc-arm-embedded/issues'

chef_version '>= 12.1'
