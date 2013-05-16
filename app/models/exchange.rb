class Exchange

  CURRENCIES = ["USD","GBP","EUR", "JPY"]

  attr_reader :provider

  def self.from_config
    # should instantiate a provider based on some config or initializer setting
    # return Exchange.new(OpenExchangeRatesProvider.new)
    return Exchange.new(DummyExchangeProvider.new(1.5))
  end

  def initialize(provider)
    raise "Provider must provide a convert method" unless provider.respond_to?('convert')
    @provider = provider
  end

  def convert(amount, from_currency, to_currency)
    provider.convert(amount, from_currency, to_currency)
  end

end




# module ActiveRecord

#   class Base

#   end
# end


# module Free

#   class Base

#   end


#   class Loader
#     def hello
#       ::Base.new
#     end
#   end
# end

# class Base

# end

# ActiveRecordBase
# Free/Base