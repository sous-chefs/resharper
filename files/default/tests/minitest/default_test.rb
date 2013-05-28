require 'minitest/spec'

class TestResharperInstall < MiniTest::Chef::TestCase

  def test_resharper_was_installed
    base_resharper_dir = File.join(ENV['ProgramFiles(x86)'], 'JetBrains', 'ReSharper')
    assert Dir.exists?(base_resharper_dir)
  end

end
