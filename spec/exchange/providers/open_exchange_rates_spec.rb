require 'spec_helper'

describe 'OpenExchangeRates' do
  before(:all) do
    @rates = OpenExchangeRates::Rates.new
  end

  it 'converts from USD to GBP' do
    result = @rates.convert 123.45, from: 'USD', to: 'GBP'
    puts result
    result.should be_a_kind_of Numeric
  end

  it 'converts from GBP to EUR' do
    result = @rates.convert 123.45, from: 'GBP', to: 'EUR'
    puts result
    result.should be_a_kind_of Numeric
  end

  it 'converts from EUR to AED' do
    result = @rates.convert 123.45, from: 'EUR', to: 'AED'
    puts result
    result.should be_a_kind_of Numeric
  end
end

describe 'openexchangerates api' do
  before(:all) do
    @response = Curl::Easy.perform("http://openexchangerates.org/currencies.json?api_id=#{OpenExchangeRates.configuration.app_id}")
  end

  it 'gets a list of currencies' do
    @response.status.should eq "200 OK"
  end

  it 'contains GBP' do
    currencies = JSON.parse @response.body_str
    puts currencies.class
    currencies.has_key?("GBP").should be_true
  end
end