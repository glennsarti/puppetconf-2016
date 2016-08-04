require 'spec_helper'
describe 'dot_net_core' do
  context 'with default values for all parameters' do
    it { should contain_class('dot_net_core') }
  end
end
