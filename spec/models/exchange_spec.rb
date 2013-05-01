require 'spec_helper'

describe Exchange do

  context 'to_currency and from_currency are the same' do
    it 'returns the same amount' do
      Exchange.convert(10,"USD","USD").should eq 10
    end
  end

  context 'to_currency is different to from_currency' do
    it 'returns the amount in the to_currency' do
      Exchange.convert(10,"USD","GBP").should eq 6
    end
  end


end
