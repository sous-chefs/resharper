#
# Author:: Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: resharper
# Attribute:: default
#
# Copyright 2013, Daptiv Solutions, LLC.
# Copyright 2016, Shawn Neal
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['resharper']['version'] = '2018.1'
default['resharper']['source'] = 'https://download.jetbrains.com/resharper/'
default['resharper']['vs_versions'] = %w(10 11 12 14)
default['resharper']['products'] = 'dotPeek;ReSharper'
default['resharper']['checksum'] = 'b81d315e36f7ab68c9ec70b6762f059973bebbcfd98d612f23ee9dc2b9d45b46'
default['resharper']['install_dir'] =
  ::File.join(ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)', 'JetBrains')
