require 'spec_helper'

describe ExchangesController do
  describe 'POST exchanges#create' do
    it 'converts a value' do

      post :create, {:amount => 3, :from_currency => "GBP", :to_currency => "USD" }
      puts response.body
      response.body.should eq '{"amount":4.5,"to_currency":"USD"}'

    end
  end


end

