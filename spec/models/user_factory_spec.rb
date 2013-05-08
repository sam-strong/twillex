require 'spec_helper'


describe UserFactory do

  context 'on initialization' do

    it 'creates a user named Zahid' do
      user = UserFactory.create
      user.name.should eq "Zahid"
    end

    it 'saves the user to the database' do
      user = UserFactory.create
      should be_true
    end

  end



end