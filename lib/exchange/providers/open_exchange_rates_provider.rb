class OpenExchangeRatesProvider
  def convert(amount, from_currency, to_currency)
    @rates ||= OpenExchangeRates::Rates.new
    @rates.convert amount,from: from_currency,to: to_currency
  end
end