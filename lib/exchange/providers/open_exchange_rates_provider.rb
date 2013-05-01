class OpenExchangeRatesProvider
  def convert(amount, from_currency, to_currency)
    @rates ||= OpenExchangeRates::Rates.new
    @rates.convert amount,from: from,to: to
  end
end