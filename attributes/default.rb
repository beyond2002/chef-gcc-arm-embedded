default['gcc_arm']['install_as_root'] = false
default['gcc_arm']['user'] = 'vagrant'
default['gcc_arm']['group'] = 'vagrant'

# Most directories are relative to this
default['gcc_arm']['dir'] = "/home/#{node['gcc_arm']['user']}/gcc-arm-embedded"
# for handy bash wrapper scripts, for tools that install via curl/wget; you can use remote_file to render the file into here, then execute it
default['gcc_arm']['directories']['bin'] = "#{node['gcc_arm']['dir']}/bin"
# for tmp files that should NOT be managed by the OS's tmp folder
default['gcc_arm']['directories']['tmp'] = "#{node['gcc_arm']['dir']}/tmp"
