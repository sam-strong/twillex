require 'spec_helper'

describe ExchangesController do
  describe 'POST exchanges#create' do
    it 'converts a value' do
      Exchange.any_instance.should_receive(:convert).and_return(4.66)

      post :create, {:amount => 3, :from_currency => "GBP", :to_currency => "USD" }
      puts response.body
      response.body.should eq '{"amount":4.66,"to_currency":"USD"}'

    end
  end
end

