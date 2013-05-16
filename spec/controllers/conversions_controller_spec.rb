require 'spec_helper'

describe ConversionsController do

  context "receiving an sms from twillio with a number and body" do

    before { User.delete_all }

    it 'sends an sms with the converted amount in the body' do
      UserFactory.create
      Exchange.any_instance.should_receive(:convert).and_return(4)
      TwilioApi.any_instance.should_receive(:send_sms).with("07777777777", "JPY 4")

      post :create, { :Body => 6, :From => "07777777777" }

    end
  end
end
