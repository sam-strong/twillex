class ExchangesController < ApplicationController

  def create
    @exchange = Exchange.convert(params['amount'])

  end
end

