
require 'spec_helper'

describe 'policydweight::service' do
  let(:pre_condition) { 'package {"policyd-weight": }' }

  it { is_expected.to compile.with_all_deps }

  it 'configures policyd-weight service' do
    is_expected.to contain_service('policyd-weight').with(
      :ensure => 'running',
      :enable => true,
    )
  end
end

