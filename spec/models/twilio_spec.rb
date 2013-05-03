require 'spec_helper'

describe TwilioApi do

  it 'sends an SMS' do
    twilio = TwilioApi.new
    twilio.send_sms('+441704450128', '+447748299962', 'hello').status.should eq "queued"
  end

  it 'receives an SMS' do
    twilio = TwilioApi.new
    twilio.receives_sms('SM53b2c779a2c7c2b914e50744ce2efe36').status.should eq "sent"
  end

end
