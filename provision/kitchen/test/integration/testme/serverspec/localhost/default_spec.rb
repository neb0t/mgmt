require 'spec_helper'

describe 'ansible-roles::testme' do

  describe package('zip') do
	it { should be_installed }
  end

end