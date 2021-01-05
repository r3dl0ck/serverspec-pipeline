require 'spec_helper'

describe package('docker-ce'), :if => os[:family] == 'debian' do
  it { should be_installed }
end

describe user('vagrant') do
    it { should exist }
    it { should belong_to_group 'docker' }
end
