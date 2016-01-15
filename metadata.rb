name 'resharper'
maintainer 'Changepoint'
maintainer_email 'dl_teamengineering@daptiv.com'
license 'All rights reserved'
description 'Installs/Configures resharper'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
ver_path = File.join(File.dirname(__FILE__), 'version.txt')
version File.exist?(ver_path) ? IO.read(ver_path).chomp : '1.0.0'
supports 'windows'
depends 'windows', '>= 1.2.6'
depends 'visualstudio'
