require 'spec_helper'

describe 'OpenExchangeRates' do
  let(:rates) { OpenExchangeRates::Rates.new }

  it 'converts from USD to GBP' do
    result = rates.convert 123.45, from: 'USD', to: 'GBP'
    puts result
    result.should be_a_kind_of Numeric
  end

  it 'converts from GBP to EUR' do
    result = rates.convert 123.45, from: 'GBP', to: 'EUR'
    puts result
    result.should be_a_kind_of Numeric
  end

  it 'converts from EUR to AED' do
    result = rates.convert 123.45, from: 'EUR', to: 'AED'
    puts result
    result.should be_a_kind_of Numeric
  end
end

describe 'openexchangerates api' do
  it 'gets a list of currencies' do

  end
end