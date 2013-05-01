require 'spec_helper'

describe ExchangesController do
  describe 'POST exchanges#create' do
    it 'returns a value' do
      post :create, {'amount' => 2, "currency_from" => "GBP", "currency_to" => "USD" }
      assert_not_nil assigns(:exchange)


    end
  end


end

