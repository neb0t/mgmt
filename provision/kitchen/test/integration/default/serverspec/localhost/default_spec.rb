require 'spec_helper'

describe 'ansible-roles::default' do

  describe package('unzip') do
	it { should be_installed }
  end

end