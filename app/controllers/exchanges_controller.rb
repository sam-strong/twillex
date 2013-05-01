class ExchangesController < ApplicationController

  def create
    # @exchange = Exchange.convert(params['amount'])

    exchange = Exchange.from_config
    # exchange.convert blah
  end
end

