name             'resharper'
maintainer       'Daptiv Solutions LLC'
maintainer_email ''
license          'All rights reserved'
description      'Installs/Configures resharper'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          (ENV['BUILD_NUMBER'] ? "0.1.#{ENV['BUILD_NUMBER']}" : '0.1.0')
supports         'windows'
depends          'windows', '>= 1.2.6'
