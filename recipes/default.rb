#
# Cookbook Name:: resharper
# Recipe:: default
#
# Copyright (C) 2013 Daptiv Solutions LLC
# 
# All rights reserved - Do Not Redistribute
#

version = node['resharper']['version']
package_name = node['resharper'][version]['package_name']
checksum = node['resharper'][version]['checksum']

if version.start_with?('7')
  windows_package package_name do
    source "#{node['resharper']['root_download_url']}/ReSharperSetup.#{version}.msi"
    checksum checksum
    installer_type :msi
    action :install
  end
else
  local_setup = ::File.join(Chef::Config[:file_cache_path], "resharper#{version}.exe")

  remote_file local_setup do
    source "#{node['resharper']['root_download_url']}/JetBrains.ReSharperUltimate.#{version}.exe"
    checksum checksum
    notifies :execute, "run[install_resharper_#{version}]", :immediately
  end

  log_file = win_friendly_path(::File.join(Dir.tmpdir, "resharper#{version}.log"))
  opts = "/VsVersion=#{node['resharper']['vs_versions'].join(';')} " +
    "/SpecificProductNames=#{node['resharper']['products']} " +
    "/IgnoreExtensions=True /Silent=True /PerMachine=True /LogFile=#{log_file}"

  execute "install_resharper_#{version}" do
    command "#{local_setup} #{opts}"
    action :nothing
  end
end
