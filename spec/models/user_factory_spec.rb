require 'spec_helper'


describe UserFactory do

  before { User.delete_all }

  context 'on initialization' do

    it 'creates a user named Zahid' do
      user = UserFactory.create
      user.name.should eq "Zahid"
    end

    it 'saves the user to the database' do
      user = UserFactory.create
      user.should be_persisted
    end
  end
end