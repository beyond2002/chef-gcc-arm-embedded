#
# Cookbook Name:: gcc-arm-embedded
# Recipe:: default
#
# author: Free Beachler
#

# install gcc-arm-embedded

include_recipe('build-essential')
include_recipe('apt')
include_recipe('ark')

gcc_arm_platform_key = if platform_family?('mac_os_x')
  # FIXME not fully implemented with deps
  raise "not implemented"
elsif platform_family?('windows')
  raise "not implemented"
else # assume linux
  "linux"
end

package 'Install ARM GCC Embedded Dependencies' do
  case node[:platform]
  when 'redhat', 'centos', 'debian'
  when 'ubuntu'
    package_name 'lib32z1'
    package_name 'lib32ncurses5'
    package_name 'lib32bz2-1.0'
  end
end

node['gcc_arm']['directories'].each_pair do |sub_dir_name, full_path|
  directory full_path do
    recursive true
    owner node['gcc_arm']['user']
    group node['gcc_arm']['group']
  end
end

node['gcc_arm'][gcc_arm_platform_key]['binary'].each do |binary|
  Chef::Log.info("ARK install :: #{binary}")
  ark "gcc-arm-embedded-#{binary['version']}" do
    url binary['url']
    version(File.basename(binary['binary_reported_version']).gsub(/[\.\s]+/,'-'))
    checksum binary['sha256_checksum']
    extension 'tar.bz2'
    path "#{node['gcc_arm']['dir']}"
    home_dir "#{node['gcc_arm']['directories']['bin']}"
    owner node['gcc_arm']['user']
    group node['gcc_arm']['group']
    mode 0755
    action :put
    not_if { File.directory?("#{node['gcc_arm']['dir']}/gcc-arm-embedded-#{binary['version']}") }
  end
end
