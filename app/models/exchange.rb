class Exchange
  attr_reader :provider

  def self.from_config
    # should instantiate a provider based on some config or initializer setting
    return Exchange.new(DummyExchangeProvider.new(1.5))
  end

  def initialize(provider)
    raise "Provider must provide a convert method" unless provider && provider.respond_to?('convert')
    @provider = provider
  end

  def convert(amount, from_currency, to_currency)
    provider.convert(amount, from_currency, to_currency)
  end

end