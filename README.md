[![Cookbook Version](http://img.shields.io/cookbook/v/resharper.svg)](https://supermarket.chef.io/cookbooks/resharper)
[![Build status](https://ci.appveyor.com/api/projects/status/j2fei3q90p9dft9q/branch/master?svg=true)](https://ci.appveyor.com/project/ChefWindowsCookbooks65871/resharper/branch/master)

# resharper cookbook

Installs and configures JetBrains ReSharper 10+.

# Requirements

Visual Studio is already installed.

# Usage

Include the `resharper::default` recipe in your run list.

# Attributes

* `node['resharper']['version']` - Defaults ReSharper 10. If you change this you'll need to change product name and checksum.

# Recipes

default
-------
Installs ReSharper 10

# Author

Author:: Shawn Neal (<sneal@sneal.net>)
