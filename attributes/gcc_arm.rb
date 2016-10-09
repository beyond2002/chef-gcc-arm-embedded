# Debian systems
default['gcc_arm']['linux']['binary'] = [
  {
    'url' => 'https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2',
    'sha256_checksum' => 'a397c49bdd0cf17a38a494cb691baf68b8dcffa4d4c06561ef3d71b2ab4c92a1',
    'version' => '5.4.1',
    'binary_reported_version' => '5.4.1 20160919'
  }
]

# OS X
default['gcc_arm']['mac_os_x']['binary'] = [
  {
    'url' => 'https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-mac.tar.bz2',
    'sha256_checksum' => '5656cdec40f99d5c054a85bbc694276e1c4a1488cdacbbc448bc6acd3bbe070d',
    'version' => '5.4.1',
    'binary_reported_version' => '5.4.1 20160919'
  }
]
