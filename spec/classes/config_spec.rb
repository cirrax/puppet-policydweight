
require 'spec_helper'

describe 'policydweight::config' do
  let(:pre_condition) { 'service {"policyd-weight": }' }

  it { is_expected.to compile.with_all_deps }

  it 'configures policyd-weight config' do
    is_expected.to contain_file('/etc/policyd-weight.conf').with(
      :ensure => 'file',
      :owner  => 'root',
      :group  => 'root',
      :mode   => '0644',
    )
  end
end
