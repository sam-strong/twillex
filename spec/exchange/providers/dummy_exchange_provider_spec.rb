require 'spec_helper'

describe DummyExchangeProvider do

  let(:provider) {DummyExchangeProvider.new(1.5)}

  context 'to_currency and from_currency are the same' do
    it 'returns the same amount' do
      provider.convert(10,"USD","USD").should eq 10
    end
  end

  context 'to_currency is USD and from_currency is different' do
    it 'returns the amount multiplied by the rate' do
      provider.convert(10,"USD","GBP").should eq 15
    end
  end

  # context 'to_currency is not USD and different to from_currency' do
  #   it 'returns the amount in the to_currency' do
  #     @exchange.convert(10,"EUR","GBP").should eq 8.46
  #   end
  # end


end