


require 'spec_helper'

describe 'policydweight' do
  it { is_expected.to compile.with_all_deps }

  it { is_expected.to contain_class('policydweight::config') }
  it { is_expected.to contain_class('policydweight::service') }

  it 'installs policyd-weight' do
    is_expected.to contain_package('policyd-weight').with(
      :ensure => 'installed',
      :name   => 'policyd-weight',
    )
  end
end

