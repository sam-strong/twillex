class ExchangesController < ApplicationController

  def create
    @exchange = Exchange.from_config
    @exchange.convert(params['amount'].to_i, params['from_currency'], params['to_currency'])

    render :json => { :amount => @exchange }
  end
end

