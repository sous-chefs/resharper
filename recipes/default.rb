#
# Cookbook Name:: resharper
# Recipe:: default
#
# Copyright (C) 2013 Daptiv Solutions LLC
# 
# All rights reserved - Do Not Redistribute
#

version      = node['resharper']['version']
url          = "#{node['resharper']['root_download_url']}/ReSharperSetup.#{version}.msi"
package_name = node['resharper'][version]['package_name']
checksum     = node['resharper'][version]['checksum']

windows_package package_name do
  source url
  checksum checksum
  installer_type :msi
  action :install
end
