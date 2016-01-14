require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.platform = 'windows'
  config.version = '2012R2'
end
