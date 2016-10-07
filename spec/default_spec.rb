describe 'resharper::default' do
  describe 'version 2016.2.2' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'windows', version: '2008R2').converge(described_recipe)
    end
    it 'download finished notifies install executable' do
      resource = chef_run.remote_file('download_resharper_2016.2.2')
      expect(resource).to notify(
        'execute[install_resharper_2016.2.2]'
      ).to(:run).immediately
    end
  end
end
