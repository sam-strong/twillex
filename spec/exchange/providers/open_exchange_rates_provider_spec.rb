describe OpenExchangeRatesProvider do
  it 'converts from USD to GBP' do
    provider = OpenExchangeRatesProvider.new
    provider.convert_from = "USD"
    provider.convert_to = "GBP"
    provider.convert(123.45).should eq 345.67
  end
end