require 'spec_helper'

describe ExchangesController do
  describe 'POST exchanges#create' do
    it 'converts a value' do
      exchange = double(:exchange)
      exchange.should_receive(:convert).and_return(4.5)

      Exchange.should_receive(:from_config).and_return(exchange)

      double = double(:exchange)
      double.should_receive(:convert).with(3, "GBP", "USD").and_return(4.66)

      Exchange.should_receive(:from_config).and_return(double)

      post :create, {:amount => 3, :from_currency }

      response.body.should eq '{"amount":4.5,"to_currency":"USD"}'
    end
  end


end

