require 'spec_helper'

describe Sms::ExchangesController do

    context 'receives an sms from Twilio with the phone number and amount' do

    before do
      Exchange.any_instance.stub(:convert).and_return(150)
      TwilioApi.any_instance.stub(:send_sms)
      UserFactory.create
    end

    it 'converts the amount based on user preferences' do
      Exchange.any_instance.should_receive(:convert).with(100, "USD", "JPY").and_return(150)
        post :create, from: "07777777777", body: "100"
    end

    it 'renders nothing' do
      post :create, from: "07777777777", body: "100"
      response.body.should be_blank
      response.status.should eq 200
    end

    it 'send a reply with the correct amount to Twilio' do
      TwilioApi.any_instance.should_receive(:send_sms).with("07777777777", "Your converted amount in JPY is 150")
      post :create, from: "07777777777", body: "100"
    end
  end
end

