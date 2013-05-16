class Exchange

  CURRENCIES = ["USD","GBP","EUR", "JPY"]

  attr_reader :provider

  def self.from_config
    # should instantiate a provider based on some config or initializer setting
    # return Exchange.new(OpenExchangeRatesProvider.new)
    return Exchange.new(DummyExchangeProvider.new(1.5))
  end

  # def self.real_exchange
  #   Exchange.new(OpenExchangeRatesProvider.new)
  # end

  def initialize(provider)
    raise "Provider must provide a convert method" unless provider.respond_to?('convert')
    @provider = provider
  end

  def convert(amount, from_currency, to_currency)
    provider.convert(amount, from_currency, to_currency)
  end

end


# Exchange.new(OpenExchangeRatesProvider.new)
# Exchange.new(DummyExchangeProvider.new(1.5))

# Exchange.real_exchange
# Exchange.from_config



# Exchange.new
# Exchange.from_config
# Exchange.create