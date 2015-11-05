require 'minitest/spec'

class TestResharperInstall < MiniTest::Chef::TestCase
  def test_resharper_was_installed
    assert Dir.exists?(node['resharper']['install_dir'])
  end
end
