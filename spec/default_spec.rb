describe 'resharper::default' do
  describe 'version 2018.1' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe)
    end
    it 'download finished notifies install executable' do
      resource = chef_run.remote_file('download_resharper_2018.1')
      expect(resource).to notify(
        'execute[install_resharper_2018.1]'
      ).to(:run).immediately
    end
  end
end
