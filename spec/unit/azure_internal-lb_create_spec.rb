require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../unit/query_azure_mock')

describe Chef::Knife::AzureInternalLbCreate do
  include AzureSpecHelper
  include QueryAzureMock

  before do
    @server_instance = Chef::Knife::AzureInternalLbCreate.new
      {
        azure_subscription_id: 'azure_subscription_id',
        azure_mgmt_cert: @cert_file,
        azure_api_host_name: 'preview.core.windows-int.net',
      }.each do |key, value|
        Chef::Config[:knife][key] = value
      end
    stub_query_azure(@server_instance.connection)
    allow(@server_instance).to receive(:puts)
    allow(@server_instance).to receive(:print)
  end

  it 'should fail missing args.' do
    expect(@server_instance.connection.lbs).to_not receive(:create)
    expect(@server_instance.ui).to receive(:error)
    expect { @server_instance.run }.to raise_error
  end

  it 'should succeed.' do
    Chef::Config[:knife][:azure_load_balancer] = 'new-lb'
    Chef::Config[:knife][:azure_lb_static_vip] = '10.3.3.3'
    Chef::Config[:knife][:azure_subnet_name] = 'vnet'
    Chef::Config[:knife][:azure_dns_name] = 'vmname'
    expect(@server_instance.connection.lbs).to receive(:create).with(
      azure_load_balancer: 'new-lb',
      azure_lb_static_vip: '10.3.3.3',
      azure_subnet_name: 'vnet',
      azure_dns_name: 'vmname'
    ).and_call_original
    expect(@server_instance.ui).to_not receive(:warn)
    expect(@server_instance.ui).to_not receive(:error)
    @server_instance.run
  end
end
