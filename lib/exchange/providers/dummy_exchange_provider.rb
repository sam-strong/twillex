class DummyExchangeProvider
  def initialize(rate)
    @rate =rate
  end
  def convert(amount, from_currency, to_currency)
    return amount if from_currency == to_currency
    @rate* amount
  end
end