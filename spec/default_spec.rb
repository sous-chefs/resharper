# encoding: UTF-8
describe 'resharper::default' do
  describe 'version 10' do
    before :each do
      ENV['WINDIR'] = 'C:\Windows'
    end
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.set['resharper']['version'] = '10'
        node.set['visualstudio']['source'] = 'http://blah.com'
      end.converge(described_recipe)
    end
    it 'download finished notifies install executable' do
      resource = chef_run.remote_file('download_resharper_10')
      expect(resource).to notify(
        'execute[install_resharper_10]'
      ).to(:run).immediately
    end
  end
end
