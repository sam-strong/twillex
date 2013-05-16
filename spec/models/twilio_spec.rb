require 'spec_helper'

describe TwilioApi do

  it 'sends an SMS' do
    double = double(:messager)
    double.should_receive(:create).with({:from => '+441704450128', :to => '+447748299962', :body => 'hello ruben'})

    twilio = TwilioApi.new
    twilio.stub(:messenger).and_return(double)
    twilio.send_sms('+447748299962', 'hello ruben')
  end

  it 'receives an SMS' do
    double = double(:messager)
    double.should_receive(:get).with('SM53b2c779a2c7c2b914e50744ce2efe36')

    twilio = TwilioApi.new
    twilio.stub(:messenger).and_return(double)
    twilio.receives_sms('SM53b2c779a2c7c2b914e50744ce2efe36')
  end


  # context 'given a user is created' do
  #   it 'sends a welcome text to the user' do
  #     user_double = double :user, phone_number: "+447748299962", name: "bob", from_currency: "JPY", to_currency: "GBP"
  #     twilio = TwilioApi.new
  #     @user_d = User.new
  #     @user_d.update(user_double)

  #     twilio.send_sms_to(user_double).status.should eq "queued"

  #   end
  # end

end
