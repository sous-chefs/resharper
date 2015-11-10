# encoding: UTF-8
describe 'resharper::default' do
  describe 'version 10' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['resharper']['version'] = '10'
      end.converge(described_recipe)
    end
    it 'download finished notifies install executable' do
      resource = chef_run.remote_file('download_resharper_10')
      expect(resource).to notify('execute[install_resharper_10]').to(:run).immediately
    end
  end
end
