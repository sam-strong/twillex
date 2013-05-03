require 'spec_helper'

describe ExchangesController do
  describe 'POST exchanges#create' do
    it 'converts a value' do
      exchange = double(:exchange)
      exchange.should_receive(:convert).and_return(4.5)

      Exchange.should_receive(:from_config).and_return(exchange)

      post :create, {:amount => 3, :from_currency => "GBP", :to_currency => "USD" }
      puts response.body
      response.body.should eq '{"amount":4.5,"to_currency":"USD"}'

    end
  end


end

